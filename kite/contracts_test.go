package kite

import (
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
