package kite

// Перевірка дозволів (3.2, 14.2 п. 9). Keycloak кладе в токен лише ролі
// (realm_access.roles), а що вони дозволяють — мапа RolePermissions,
// згенерована з auth/permissions.json. Скоуп (яке відділення, яка організація)
// сюди не входить: його сервіс перевіряє сам, за network.staff_assignment.
//
// Це єдиний написаний руками файл пакета kite — решта згенерована.

// HasPermission каже, чи дає хоч одна з ролей дозвіл. Ролі — рядки прямо з
// токена; службові ролі Keycloak (default-roles-kite, offline_access) і будь-які
// інші незнайомі імена нічого не дають, але й не є помилкою.
func HasPermission(roles []string, p Permission) bool {
	for _, r := range roles {
		for _, granted := range RolePermissions[Role(r)] {
			if granted == p {
				return true
			}
		}
	}
	return false
}

// PermissionsOf повертає всі дозволи, які дають ролі, без повторів.
func PermissionsOf(roles []string) map[Permission]struct{} {
	out := make(map[Permission]struct{})
	for _, r := range roles {
		for _, p := range RolePermissions[Role(r)] {
			out[p] = struct{}{}
		}
	}
	return out
}
