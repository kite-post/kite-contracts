// Точка входу пакета @kite-post/contracts. Руками тут лише клієнт і перевірка дозволу;
// типи, реєстр і мапа дозволів — згенеровані (*.gen.ts) і правляться через схеми.
import createClient, { type ClientOptions } from "openapi-fetch";

import { kiteRolePermissions } from "./permissions.gen.js";
import type { Permission, Role, paths } from "./schema.gen.js";

export * from "./schema.gen.js";
export * from "./registry.gen.js";
export * from "./permissions.gen.js";

/**
 * Типізований клієнт REST API Kite за шлюзом (розділ 9).
 *
 *   const api = createKiteClient({ baseUrl: "/api/v1" });
 *   const { data, error } = await api.GET("/public/track/{trackingNumber}", {
 *     params: { path: { trackingNumber: "KT123456785UA" } },
 *   });
 */
export function createKiteClient(options: ClientOptions = {}) {
  return createClient<paths>(options);
}

export type KiteClient = ReturnType<typeof createKiteClient>;

const grants = (role: string): readonly Permission[] =>
  Object.hasOwn(kiteRolePermissions, role) ? kiteRolePermissions[role as Role] : [];

/**
 * Чи дає хоч одна з ролей дозвіл (3.2). Ролі — як у `realm_access.roles` токена;
 * незнайомі (default-roles-kite тощо) нічого не дають. У UI — щоб ховати
 * недоступні дії; рішення все одно приймає сервіс.
 */
export function hasPermission(roles: readonly string[], permission: Permission): boolean {
  return roles.some((role) => grants(role).includes(permission));
}

/** Усі дозволи, які дають ролі. */
export function permissionsOf(roles: readonly string[]): Set<Permission> {
  return new Set(roles.flatMap((role) => grants(role)));
}
