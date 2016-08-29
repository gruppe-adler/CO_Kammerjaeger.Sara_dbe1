if (isNil "cargocontainer1") exitWith {};
if (isNull cargocontainer1) exitWith {};

_action = {
  _onComplete = {
    _params = _this select 0;
    _container = _params select 0;
    if (isNil "_container") exitWith {};
    if (isNull _container) exitWith {};
    [[_container], "USERSCRIPTS\spawnQuads.sqf"] remoteExec ["execVM",2,false];
  };
  [10, [_this select 0], _onComplete, {hint "abgebrochen"}, "Container entpacken"] call ace_common_fnc_progressBar;
};

cargocontainer1 addAction ["Container entpacken", _action, [], 2, true, true, "", "true", 10];
