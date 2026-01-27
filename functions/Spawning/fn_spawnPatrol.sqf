params ["_pos","_side","_count"];

// ================= CONFIGURACIÓN =================
private _maxGroupSize = 6;        // Máximo de soldados por patrulla
private _minGroupSize = 4;        // Mínimo para que no sean inútiles
private _maxActiveGroups = 4;     // Máximo de grupos activos globales
// =================================================

// Inicializar contador global si no existe
if (isNil "A3E_ActiveEnemyGroups") then {
	A3E_ActiveEnemyGroups = 0;
};

// Limitar número de grupos activos
if (A3E_ActiveEnemyGroups >= _maxActiveGroups) exitWith {
	["Spawn skipped: max enemy groups reached"] call a3e_fnc_debugmsg;
};

// Limitar tamaño del grupo
_count = (_count min _maxGroupSize) max _minGroupSize;
_count = _count - 1;

// Selección de tipos de infantería
private _possibleInfantryTypes = [];

if (_side == A3E_VAR_Side_Ind) then {
	_possibleInfantryTypes = a3e_arr_Escape_InfantryTypes_Ind;
};
if (_side == A3E_VAR_Side_Opfor) then {
	_possibleInfantryTypes = a3e_arr_Escape_InfantryTypes;
};

if (count _possibleInfantryTypes <= 0) then {
	["Escape warning: Infantry array empty"] call a3e_fnc_debugmsg;
};

// Crear grupo
private _group = createGroup _side;
A3E_ActiveEnemyGroups = A3E_ActiveEnemyGroups + 1;

["Creating patrol group"] call a3e_fnc_debugmsg;

// Crear líder
private _unit = _group createUnit [selectRandom _possibleInfantryTypes, _pos, [], 0, "FORM"];
[_unit] call A3E_fnc_onEnemySoldierSpawn;

// Crear resto del grupo
for "_x" from 1 to _count do {
	_unit = _group createUnit [selectRandom _possibleInfantryTypes, _pos, [], 0, "FORM"];
	[_unit] call A3E_fnc_onEnemySoldierSpawn;
};

// Auto-limpieza del grupo (evita acumulación eterna)
[_group] spawn {
	params ["_grp"];
	sleep (300 + random 120); // 5–7 minutos
	if (!isNull _grp) then {
		{ deleteVehicle _x } forEach units _grp;
		deleteGroup _grp;
		A3E_ActiveEnemyGroups = A3E_ActiveEnemyGroups - 1 max 0;
	};
};

_group
