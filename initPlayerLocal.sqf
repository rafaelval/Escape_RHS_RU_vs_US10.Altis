waitUntil { !isNull player && player == player };

// 🧠 Cargar progreso si existe
private _uid = getPlayerUID player;
private _data = profileNamespace getVariable [format ["saveData_%1", _uid], []];

if (_data isEqualType [] && {count _data == 3}) then {
    player setPosASL (_data select 0);
    player setUnitLoadout (_data select 1);
    player setDamage (_data select 2);
    player setVariable ["RestoredFromProfile", true, true]; // ✅ Marcar
    hint "✅ Progreso restaurado desde perfil.";
} else {
    player setVariable ["RestoredFromProfile", false, true];
    hint "👋 No hay progreso guardado en el perfil.";
};

// 💾 Función global para guardar progreso local
savePlayerProgress = {
    private _uid = getPlayerUID player;
    private _data = [getPosASL player, getUnitLoadout player, damage player];
    private _var = format ["saveData_%1", _uid];

    profileNamespace setVariable [_var, _data];
    saveProfileNamespace;

    hint "💾 Tu progreso fue guardado.";
    systemChat format ["📥 Guardado local completado para %1", name player];
};
publicVariable "savePlayerProgress";

// 🔄 Escucha de guardado remoto
"saveAllNow" addPublicVariableEventHandler {
    [] spawn savePlayerProgress;
};

// 🔁 Guardado automático
[] spawn {
    [] call savePlayerProgress; // Guardado inmediato al iniciar
    while {true} do {
        sleep 1800; // cada 30 minutos
        [] call savePlayerProgress;
    };
};

// 🗑 Acción para borrar progreso (solo visible en rueda)
player addAction [
    "🗑 Borrar Progreso",
    {
        private _uid = getPlayerUID player;
        private _var = format ["saveData_%1", _uid];

        profileNamespace setVariable [_var, nil];
        saveProfileNamespace;

        hint "🧹 Progreso eliminado. Se reiniciará en el próximo inicio.";
        systemChat format ["🧼 Guardado eliminado para %1", name player];
    },
    nil,                // arguments
    1.5,                // priority
    false,              // showWindow (oculta como flotante)
    true,               // hideOnUse
    "",                 // shortcut
    "true",             // condition
    5,                  // radius
    false               // unconscious
];

// 💾 Acción de guardar todos (solo admin, solo rueda)
if (serverCommandAvailable "#kick") then {
    player addAction [
        "💾 Guardar Todos",
        {
            saveAll = true;
            publicVariableServer "saveAll";
            hint "📤 Enviando solicitud para guardar a todos los jugadores (perfil)...";
        },
        nil, 1.5, false, true, "", "true", 5, false
    ];
};
