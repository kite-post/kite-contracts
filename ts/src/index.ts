// Точка входу пакета @kite-post/contracts. Руками тут лише клієнт; типи й реєстр —
// згенеровані (schema.gen.ts, registry.gen.ts) і правляться через схеми.
import createClient, { type ClientOptions } from "openapi-fetch";

import type { paths } from "./schema.gen.js";

export * from "./schema.gen.js";
export * from "./registry.gen.js";

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
