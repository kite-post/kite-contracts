package kite

import (
	"context"
	"encoding/json"
	"os"
	"path/filepath"
	"slices"
	"testing"
)

func readExample(t *testing.T, name string) []byte {
	t.Helper()
	data, err := os.ReadFile(filepath.Join("..", "examples", name))
	if err != nil {
		t.Fatalf("приклад %s не читається: %v", name, err)
	}
	return data
}

func TestStatusChangedEvent(t *testing.T) {
	var event ShipmentStatusChangedEvent
	if err := json.Unmarshal(readExample(t, "shipment.status-changed.json"), &event); err != nil {
		t.Fatalf("подія не розбирається: %v", err)
	}
	if got := string(event.Type); got != "kite.shipment.status-changed.v1" {
		t.Errorf("тип події: %s", got)
	}
	if event.Data.TrackingNumber != "KT123456785UA" {
		t.Errorf("номер: %s", event.Data.TrackingNumber)
	}
	if event.Data.StatusAfter != ShipmentStatusREADYFORPICKUP {
		t.Errorf("стан після: %s", event.Data.StatusAfter)
	}
	if event.Kitereceivedat == nil {
		t.Error("received_at — тайбрейк порядку (8.3, п. 4) — має бути в конверті")
	}
}

func TestUnitScannedCarriesShipmentList(t *testing.T) {
	var event ScanUnitScannedEvent
	if err := json.Unmarshal(readExample(t, "scan.unit-scanned.json"), &event); err != nil {
		t.Fatalf("подія не розбирається: %v", err)
	}
	if len(event.Data.ShipmentIds) != 2 {
		t.Errorf("вміст мішка їде всередині події: %d", len(event.Data.ShipmentIds))
	}
}

func TestRegistryIsConsistent(t *testing.T) {
	if len(EventRegistry) == 0 {
		t.Fatal("реєстр порожній")
	}
	for typ, meta := range EventRegistry {
		if typ != meta.Type {
			t.Errorf("ключ %s не збігається з Type %s", typ, meta.Type)
		}
		if !slices.Contains(Topics, meta.Topic) {
			t.Errorf("%s: топік %s не з переліку Topics", typ, meta.Topic)
		}
		if meta.Producer == "" || meta.PartitionKey == "" || meta.SchemaID == "" {
			t.Errorf("%s: неповні дані реєстру", typ)
		}
	}
}

func TestRegistryMatchesSchemasOnDisk(t *testing.T) {
	raw, err := os.ReadFile(filepath.Join("..", "events", "registry.json"))
	if err != nil {
		t.Fatalf("реєстр не читається: %v", err)
	}
	var doc struct {
		Events []struct {
			Type string `json:"type"`
		} `json:"events"`
	}
	if err := json.Unmarshal(raw, &doc); err != nil {
		t.Fatalf("реєстр не розбирається: %v", err)
	}
	if len(doc.Events) != len(EventRegistry) {
		t.Fatalf("у registry.json %d подій, у коді %d — переганяй make generate",
			len(doc.Events), len(EventRegistry))
	}
	for _, e := range doc.Events {
		if _, ok := EventRegistry[KiteEventType(e.Type)]; !ok {
			t.Errorf("тип %s є в registry.json, але не в коді", e.Type)
		}
	}
}

func TestPermissionsFromTokenRoles(t *testing.T) {
	// Так приходять ролі з realm_access.roles: поруч зі справжньою — службові ролі Keycloak.
	roles := []string{"default-roles-kite", "offline_access", "CLIENT"}
	if !HasPermission(roles, PermissionSHIPMENTCREATEOWN) {
		t.Error("CLIENT має створювати свої відправлення")
	}
	if HasPermission(roles, PermissionSHIPMENTREADALL) {
		t.Error("CLIENT не бачить чужих відправлень")
	}
	if HasPermission([]string{"offline_access"}, PermissionSHIPMENTREADOWN) {
		t.Error("незнайома роль нічого не дає")
	}
	// 3.2: адміністратор не створює відправлень — у нього явний список, а не «все».
	if HasPermission([]string{string(RoleADMIN)}, PermissionSHIPMENTCREATEOWN) {
		t.Error("ADMIN не створює відправлень (3.2)")
	}
	got := PermissionsOf([]string{"SORTER", "SHIFT_MANAGER"})
	if _, ok := got[PermissionDISCREPANCYMANAGE]; !ok {
		t.Error("дозволи ролей мають обʼєднуватись")
	}
}

func TestEveryRoleHasPermissionEntry(t *testing.T) {
	for _, role := range []Role{RoleCLIENT, RoleBIZOWNER, RoleBIZMEMBER, RoleOPERATOR, RoleSORTER,
		RoleSHIFTMANAGER, RoleDRIVER, RoleDISPATCHER, RoleSUPPORT, RoleADMIN, RoleSYSTEM} {
		if len(RolePermissions[role]) == 0 {
			t.Errorf("роль %s без дозволів", role)
		}
	}
	if !slices.Contains(RolePermissions[RoleSYSTEM], PermissionPRICINGQUOTE) {
		t.Error("сервісний акаунт кличе pricing (5.4, п. 7)")
	}
}

func TestInternalClientsExist(t *testing.T) {
	// Клієнти внутрішніх викликів фази 1 — з того самого пакета, що й моделі.
	c, err := NewClientWithResponses("http://pricing-service:8080")
	if err != nil {
		t.Fatal(err)
	}
	var _ func(context.Context, InternalQuoteRequest, ...RequestEditorFn) (*CalculateInternalQuoteResponse, error) = c.CalculateInternalQuoteWithResponse
	var _ func(context.Context, *ResolveRouteParams, ...RequestEditorFn) (*ResolveRouteResponse, error) = c.ResolveRouteWithResponse
	var _ func(context.Context, ProviderPaymentEvent, ...RequestEditorFn) (*ReceiveProviderEventResponse, error) = c.ReceiveProviderEventWithResponse
}
