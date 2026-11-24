// Згенеровано з auth/permissions.json командою tools/gen-permissions.py — не правити.

package kite

// RolePermissions — які дозволи дає кожна роль realm kite (3.2). Перевіряти
// краще через HasPermission: вона приймає ролі прямо з токена.
var RolePermissions = map[Role][]Permission{
	RoleCLIENT: {
		PermissionSHIPMENTCREATEOWN,
		PermissionSHIPMENTREADOWN,
		PermissionDELIVERYMANAGEOWN,
		PermissionCLAIMCREATEOWN,
		PermissionPAYMENTCREATEOWN,
		PermissionTICKETCREATEOWN,
	},
	RoleBIZOWNER: {
		PermissionSHIPMENTCREATEORG,
		PermissionSHIPMENTREADORG,
		PermissionDELIVERYMANAGEORG,
		PermissionCLAIMCREATEORG,
		PermissionPAYMENTCREATEOWN,
		PermissionTICKETCREATEOWN,
		PermissionORGMANAGE,
		PermissionORGFINANCE,
		PermissionAPIKEYMANAGE,
	},
	RoleBIZMEMBER: {
		PermissionSHIPMENTCREATEORG,
		PermissionSHIPMENTREADORG,
		PermissionDELIVERYMANAGEORG,
		PermissionCLAIMCREATEORG,
		PermissionTICKETCREATEOWN,
	},
	RoleOPERATOR: {
		PermissionSHIPMENTCREATEONBEHALF,
		PermissionSHIPMENTREADLOCATION,
		PermissionDELIVERYMANAGEONBEHALF,
		PermissionSCANBRANCH,
		PermissionTRIPLOAD,
		PermissionCLAIMCREATEONBEHALF,
		PermissionPAYMENTACCEPTCASH,
	},
	RoleSORTER: {
		PermissionSHIPMENTREADLIMITED,
		PermissionSCANHUB,
		PermissionTRIPLOAD,
		PermissionCLAIMMARKDAMAGE,
	},
	RoleSHIFTMANAGER: {
		PermissionSHIPMENTREADLIMITED,
		PermissionSCANHUB,
		PermissionTRIPLOAD,
		PermissionTRIPMANAGE,
		PermissionDISCREPANCYMANAGE,
		PermissionCLAIMMARKDAMAGE,
	},
	RoleDRIVER: {
		PermissionSHIPMENTREADNUMBER,
		PermissionTRIPLOAD,
	},
	RoleDISPATCHER: {
		PermissionSHIPMENTREADLIMITED,
		PermissionDISPATCHREAD,
		PermissionINCIDENTMANAGE,
	},
	RoleSUPPORT: {
		PermissionSHIPMENTREADALL,
		PermissionDELIVERYMANAGEALL,
		PermissionCLAIMREVIEW,
		PermissionTICKETHANDLE,
		PermissionPIIREAD,
	},
	RoleADMIN: {
		PermissionSHIPMENTREADALL,
		PermissionDELIVERYMANAGEALL,
		PermissionCLAIMREVIEW,
		PermissionTICKETHANDLE,
		PermissionPIIREAD,
		PermissionDISPATCHREAD,
		PermissionINCIDENTMANAGE,
		PermissionTARIFFWRITE,
		PermissionNETWORKWRITE,
		PermissionUSERMANAGE,
		PermissionAUDITREAD,
	},
	RoleSYSTEM: {
		PermissionSCANDEVICE,
		PermissionPRICINGQUOTE,
		PermissionNETWORKROUTE,
	},
}
