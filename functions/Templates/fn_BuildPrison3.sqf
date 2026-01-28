// Object composition created and exported with Map Builder
// See www.map-builder.info - Map Builder by NeoArmageddon
// Call this script by [Position, Rotation] execVM "filename.sqf"
// Tin Shed, tin gate off center, tin walls, flag, speakers, burning barrels x 2 and sandbags

private["_obj", "_pos"];
params ["_center", "_rotation", "_backpack"];

// Stuff that needs to be global
if (isServer) then {
	[_center, 25] call a3e_fnc_cleanupTerrain;

	_pos = [_center, _center vectorAdd [-1.49219, 1.73438, 0], _rotation] call A3E_fnc_rotatePosition;
	_obj = "Land_TinWall_01_m_gate_v1_closed_F" createVehicle _pos;
	_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
	_obj setDir ((getDir _obj) + _rotation);
	_obj setPosATL _pos;
	_obj allowDamage false;

	A3E_PrisonGateObject = _obj;

	_pos = [_center, _center vectorAdd [6.80078, 2.24219, 0.173401], _rotation] call A3E_fnc_rotatePosition;
	_obj = "Land_Loudspeakers_F" createVehicle _pos;
	_obj setVectorDirAndUp [[-0.718849, 0.695166, 0], [0, 0, 1]];
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

_pos = [_center, _center vectorAdd [0.0830078, 3.98438, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.707107, -0.707107, 0], [0, -0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.7832, -0.046875, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.707107, -0.707107, 0], [0, -0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.08496, 1.14844, -0.180135], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Metal_Shed_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;
_obj allowDamage false;

_pos = [_center, _center vectorAdd [1, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, 1, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, -1, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_medium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.63184, 5.52539, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.707107, -0.707107, 0], [0, -0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.96387, 5.19141, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.701474, 0.712695, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.9209, 7.00195, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "MetalBarrel_burning_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.00220456, 0.999998, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.33887, 3.79297, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.701474, 0.712695, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.70605, 2.40234, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.701474, 0.712695, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.03711, 0.808594, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.90137, -2.31055, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.30078, -1.60547, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.707107, -0.707107, 0], [0, -0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.33008, -2.66992, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.698328, -0.715778, 0], [-0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.90527, -2.63086, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "FlagPole_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.673639, -0.739061, 0], [-0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;
_obj setFlagTexture A3E_VAR_Flag_Ind;

_pos = [_center, _center vectorAdd [0.40332, -3.78906, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.95605, -4.04102, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.698328, -0.715778, 0], [-0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.57715, -5.4043, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.698328, -0.715778, 0], [-0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.0957, -5.26367, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.67676, -6.93164, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "MetalBarrel_burning_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[0.00220456, 0.999998, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.42969, -0.777344, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_SandbagBarricade_01_half_F" createVehicleLocal _pos;
_obj setVectorDirAndUp [[-0.707107, 0.707107, 0], [0, 0, 1]];
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;