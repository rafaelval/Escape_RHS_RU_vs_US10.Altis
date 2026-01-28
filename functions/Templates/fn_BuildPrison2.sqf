// Object composition created and exported with Map Builder
// See www.map-builder.info - Map Builder by NeoArmageddon
// Call this script by [Position, Rotation] execVM "filename.sqf"
// Small Tin shed with door, tin window covers, flag, speakers, burning barrel x 2 and sandbags

private["_obj", "_pos"];
params ["_center", "_rotation", "_backpack"];

// Stuff that needs to be global
if (isServer) then {
	[_center, 25] call a3e_fnc_cleanupTerrain;
	_pos = [_center, _center vectorAdd [-0.40625, 0.394531, -0.130976], _rotation] call A3E_fnc_rotatePosition;
	_obj = "Land_Shed_05_F" createVehicle _pos;
	_obj setVectorDirAndUp [[-0.719339, 0.694659, 0], [0, 0, 1]];
	_obj setDir ((getDir _obj) + _rotation);
	_obj setPosATL _pos;
	_obj allowDamage false;

	A3E_PrisonGateObject = _obj;

	_pos = [_center, _center vectorAdd [4.6416, 0.886719, 0.173401], _rotation] call A3E_fnc_rotatePosition;
	_obj = "Land_Loudspeakers_F" createVehicle _pos;
	_obj setVectorDirAndUp [[-0.747319, 0.664465, 0], [0, 0, 1]];
	_obj setDir ((getDir _obj) + _rotation);
	_obj setPosATL _pos;

	A3E_PrisonLoudspeakerObject = _obj;
	publicvariable "A3E_PrisonLoudspeakerObject";

	_pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 -1, 0], _rotation] call A3E_fnc_rotatePosition;
	_backpack setDir ((getDir _backpack) + _rotation);
	_backpack setPosATL _pos;

	// 📦 Caja con uniformes agregada al punto de inicio
_pos = [_center, _center vectorAdd [1.5, 1.5, 0], _rotation] call A3E_fnc_rotatePosition;
// Crear un poco más alta para evitar enterrado
private _spawnPos = _pos vectorAdd [0, 0, 0.25];
_obj = "Box_NATO_Equip_F" createVehicle _spawnPos;
_obj setDir ((getDir _obj) + _rotation);
// Posición y orientación segura
_obj setPosATL _spawnPos;
_obj setVectorUp [0,0,1];
// Evitar que se rompa por física al spawnear
_obj allowDamage false;
// Limpiar inventario
clearItemCargoGlobal _obj;
clearWeaponCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearBackpackCargoGlobal _obj;

_obj addItemCargoGlobal ["U_B_CTRG_Soldier_Arid_F", 10];
_obj addWeaponCargoGlobal ["rhsusf_weap_m1911a1", 4];
_obj addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP", 12];
_obj addItemCargoGlobal ["ACE_Fortify", 4];
// Reactivar daño tras unos segundos (opcional pero recomendado)
[_obj] spawn {
	sleep 5;
	_this allowDamage true;
};

// Stuff that can be local and is created duplicated on each client. This reduces network traffic at start.
_pos = [_center, _center vectorAdd [2, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, 2, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, -2, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.20801, -2.19336, 0.372054], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_TinWall_01_m_4m_v1_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.719522, -0.69447, 0], [0, -0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;
_obj allowDamage false;

_pos = [_center, _center vectorAdd [0.500977, 4.58984, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "MetalBarrel_burning_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.74023, 0.224609, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.730091, 0.68335, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.70605, -0.212891, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.719465, 0.694528, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.59668, 3.36328, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.712687, -0.701482, 0], [0, -0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.82422, 3.44531, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.670701, 0.741727, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.40527, 1.92383, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.703043, 0.711147, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.17578, 2.21875, 0.372054], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_TinWall_01_m_4m_v1_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.702039, 0.712139, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;
_obj allowDamage false;

_pos = [_center, _center vectorAdd [-5.06738, -1.04297, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "FlagPole_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.749656, -0.661828, 0], [-0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;
_obj setFlagTexture A3E_VAR_Flag_Ind;

_pos = [_center, _center vectorAdd [2.38574, -1.92578, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.729482, -0.684, 0], [0, -0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.28711, -1.79688, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.667428, 0.744674, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.18652, -2.2207, 0.434343], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_TinWall_01_m_4m_v1_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.67389, -0.738832, 0], [-0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.67578, -3.29102, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.683674, 0.729788, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.424805, -4.54297, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "MetalBarrel_burning_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.693359, -3.39453, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;