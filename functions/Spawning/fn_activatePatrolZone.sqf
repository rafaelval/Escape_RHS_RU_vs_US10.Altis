private _zoneIndex = _this select 0;
["Activating zone " + str _zoneIndex] call a3e_fnc_debugmsg;

_zone = a3e_patrolZones select _zoneIndex;

private _active = [_zone,"active"] call BIS_fnc_getFromPairs;
private _initialized = [_zone,"initialized"] call BIS_fnc_getFromPairs;

if (!_active) then {

	private _marker = [_zone,"marker"] call BIS_fnc_getFromPairs;
	_marker setMarkerColor "ColorYellow";
	_marker setMarkerAlpha (if (A3E_Debug) then {0.5} else {0});

	private _side = [_zone,"side"] call BIS_fnc_getFromPairs;
	private _groups = [_zone,"patrols"] call BIS_fnc_getFromPairs;
	private _area = [_zone,"zoneArea"] call BIS_fnc_getFromPairs;

	// ================= CONFIGURACIÓN =================
	private _maxPatrolsPerZone = 2; // ← MUY IMPORTANTE
	// =================================================

	if (!_initialized) then {

		private _patrolsPerSqmSqrt = 0.01;
		private _spawnCount = missionNamespace getvariable ["Param_VillageSpawnCount",1];

		switch (_spawnCount) do {
			case 1: { _patrolsPerSqmSqrt = 0.008; };
			case 2: { _patrolsPerSqmSqrt = 0.012; };
			case 3: { _patrolsPerSqmSqrt = 0.018; };
			default { _patrolsPerSqmSqrt = 0.008; };
		};

		private _edgeSum2 = ((getMarkerSize _marker # 0)+(getMarkerSize _marker # 1))/2;
		private _patrolCount = ceil(_patrolsPerSqmSqrt * sqrt(_area)) + round(_edgeSum2 / 150);

		// 🔒 LÍMITE DURO POR ZONA
		_patrolCount = _patrolCount min _maxPatrolsPerZone;

		for "_x" from 1 to _patrolCount do {

			private _pos = [_marker] call BIS_fnc_randomPosTrigger;
			private _unitCount = round((missionNamespace getvariable ["Param_EnemyFrequency",1]) * 1.5 + random 1);

			private _grp = [_pos,_side,_unitCount] call A3E_FNC_spawnPatrol;

			if (!isNil "_grp") then {
				_groups pushBack _grp;
				_grp setVariable ["A3E_PatrolZone_Index",_zoneIndex];
				[_grp, _marker] call A3E_fnc_Patrol;
				[_grp] spawn A3E_fnc_TrackGroup;
			};
		};

		[_zone,"patrols",_groups] call BIS_fnc_setToPairs;
		[_zone,"active",true] call BIS_fnc_setToPairs;
		[_zone,"initialized",true] call BIS_fnc_setToPairs;

	} else {
		// Zona ya inicializada → NO volver a spawnear todo
		[_zone,"active",true] call BIS_fnc_setToPairs;
	};
};
