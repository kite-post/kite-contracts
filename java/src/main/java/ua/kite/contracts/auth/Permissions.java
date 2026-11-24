package ua.kite.contracts.auth;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;
import java.util.Set;
import ua.kite.contracts.model.Permission;
import ua.kite.contracts.model.Role;

/**
 * Перевірка дозволів (3.2, 14.2 п. 9). Keycloak кладе в токен лише ролі ({@code
 * realm_access.roles}), а які дозволи вони дають — мапа з {@code auth/permissions.json}, що
 * лежить у цьому jar. Скоуп (яке відділення, яка організація) сюди не входить: його сервіс
 * перевіряє сам, за {@code network.staff_assignment}.
 *
 * <pre>{@code
 * List<String> roles = jwt.getClaimAsMap("realm_access").get("roles");
 * if (!Permissions.has(roles, Permission.SHIPMENT_CREATE_OWN)) throw forbidden();
 * }</pre>
 *
 * <p>Єдиний написаний руками клас пакета — решта згенерована з контракту.
 */
public final class Permissions {

  static final String RESOURCE = "/kite/contracts/auth/permissions.json";

  private static final Map<Role, Set<Permission>> BY_ROLE = load();

  private Permissions() {}

  /** Чи дає хоч одна з ролей дозвіл. Незнайомі ролі (default-roles-kite тощо) нічого не дають. */
  public static boolean has(Collection<String> roles, Permission permission) {
    for (String name : roles) {
      Role role = role(name);
      if (role != null && BY_ROLE.get(role).contains(permission)) {
        return true;
      }
    }
    return false;
  }

  /** Чи дає роль дозвіл. */
  public static boolean has(Role role, Permission permission) {
    return BY_ROLE.get(role).contains(permission);
  }

  /** Усі дозволи, які дають ролі з токена; незнайомі ролі пропускаються. */
  public static Set<Permission> of(Collection<String> roles) {
    EnumSet<Permission> out = EnumSet.noneOf(Permission.class);
    for (String name : roles) {
      Role role = role(name);
      if (role != null) {
        out.addAll(BY_ROLE.get(role));
      }
    }
    return Collections.unmodifiableSet(out);
  }

  /** Дозволи однієї ролі. */
  public static Set<Permission> of(Role role) {
    return BY_ROLE.get(role);
  }

  private static Role role(String name) {
    for (Role r : Role.values()) {
      if (r.getValue().equals(name)) {
        return r;
      }
    }
    return null;
  }

  private static Map<Role, Set<Permission>> load() {
    try (InputStream in = Permissions.class.getResourceAsStream(RESOURCE)) {
      if (in == null) {
        throw new IllegalStateException("у jar немає " + RESOURCE);
      }
      JsonNode roles = new ObjectMapper().readTree(in).get("roles");
      EnumMap<Role, Set<Permission>> out = new EnumMap<>(Role.class);
      for (Role role : Role.values()) {
        EnumSet<Permission> granted = EnumSet.noneOf(Permission.class);
        JsonNode list = roles.get(role.getValue());
        if (list != null) {
          list.forEach(p -> granted.add(Permission.fromValue(p.asText())));
        }
        out.put(role, Collections.unmodifiableSet(granted));
      }
      return Collections.unmodifiableMap(out);
    } catch (IOException e) {
      throw new UncheckedIOException("не вдалося прочитати " + RESOURCE, e);
    }
  }
}
