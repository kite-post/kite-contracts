package ua.kite.contracts.auth;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;
import org.junit.jupiter.api.Test;
import ua.kite.contracts.client.InternalNetworkApi;
import ua.kite.contracts.client.InternalPaymentsApi;
import ua.kite.contracts.client.InternalPricingApi;
import ua.kite.contracts.model.Permission;
import ua.kite.contracts.model.Role;

class PermissionsTest {

  @Test
  void readsRolesStraightFromToken() {
    // Так приходять ролі з realm_access.roles: поруч зі справжньою — службові ролі Keycloak.
    List<String> roles = List.of("default-roles-kite", "offline_access", "CLIENT");

    assertTrue(Permissions.has(roles, Permission.SHIPMENT_CREATE_OWN));
    assertFalse(Permissions.has(roles, Permission.SHIPMENT_READ_ALL));
    assertFalse(Permissions.has(List.of("offline_access"), Permission.SHIPMENT_READ_OWN));
  }

  @Test
  void adminHasExplicitListNotEverything() {
    // 3.2: адміністратор не створює відправлень і не сканує.
    assertFalse(Permissions.has(Role.ADMIN, Permission.SHIPMENT_CREATE_OWN));
    assertFalse(Permissions.has(Role.ADMIN, Permission.SCAN_HUB));
    assertTrue(Permissions.has(Role.ADMIN, Permission.TARIFF_WRITE));
  }

  @Test
  void everyRoleHasAnEntry() {
    for (Role role : Role.values()) {
      assertFalse(Permissions.of(role).isEmpty(), "роль без дозволів: " + role);
    }
    assertTrue(
        Permissions.of(List.of("SORTER", "SHIFT_MANAGER")).contains(Permission.DISCREPANCY_MANAGE));
    assertTrue(Permissions.has(Role.SYSTEM, Permission.PRICING_QUOTE), "сервісний акаунт кличе pricing");
  }

  @Test
  void internalClientsAreGenerated() {
    // Клієнти внутрішніх викликів фази 1 (5.4, п. 7) — у тому самому jar.
    new InternalPricingApi();
    new InternalNetworkApi();
    new InternalPaymentsApi();
  }
}
