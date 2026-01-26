diag_log "✅ initServer.sqf ejecutado (profileNamespace + IA médica).";

// Función para guardar datos del jugador
savePlayerData = {
    params ["_unit"];
    private _uid = getPlayerUID _unit;
    private _var = format ["saveData_%1", _uid];

    // Si el jugador borró manualmente su progreso, no guardar esta sesión
    if (missionNamespace getVariable [_var + "_deleted", false]) exitWith {
        diag_log format ["⛔ Guardado bloqueado para %1 (%2)", name _unit, _uid];
    };

    private _data = [getPosASL _unit, getUnitLoadout _unit, damage _unit];
    profileNamespace setVariable [_var, _data];
    saveProfileNamespace;

    systemChat format ["💾 Guardado por perfil: %1", name _unit];
    diag_log format ["📦 Datos guardados para %1 (%2)", name _unit, _uid];
};

// Comando remoto para guardar a todos los jugadores (desde botón)
"saveAll" addPublicVariableEventHandler {
    {
        [_x] call savePlayerData;
    } forEach allPlayers;

    diag_log "🟢 saveAll ejecutado con profileNamespace.";
};

// Guardado automático cuando un jugador se desconecta
addMissionEventHandler ["HandleDisconnect", {
    params ["_unit", "_id", "_uid"];
    [_unit] call savePlayerData;
    diag_log format ["📤 %1 se desconectó, datos guardados (HandleDisconnect)", name _unit];
}];

// ➕ Dar ACE_personalAidKit a IAs médicas existentes
{
    if (!isPlayer _x && {_x getUnitTrait 'Medic'}) then {
        if (!("ACE_personalAidKit" in items _x)) then {
            _x addItem "ACE_personalAidKit";
            diag_log format ["🩺 Médico IA detectado: %1 (%2) — Se le asigna ACE_personalAidKit", name _x, typeOf _x];
        };
    };
} forEach allUnits;

// ➕ Manejar futuras IAs médicas creadas dinámicamente
addMissionEventHandler ["EntityCreated", {
    params ["_entity"];
    if (_entity isKindOf "Man" && {!isPlayer _entity} && {_entity getUnitTrait "Medic"}) then {
        _entity addItem "ACE_personalAidKit";
        diag_log format ["🩺 Nuevo médico IA creado: %1 (%2)", name _entity, typeOf _entity];
    };
}];
