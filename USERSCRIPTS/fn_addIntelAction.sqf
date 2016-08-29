if (!hasInterface) exitWith {};

params ["_intel"];

_action = {
  _object = _this select 0;
  _isIntel = _object getVariable ["isIntel", false];

  //progressbar
  _onComplete = {
    _params = _this select 0;
    _object = _params select 0;
    _isIntel = _params select 1;

    if (_isIntel) then {
      hint "Das sieht interessant aus... (Beweis gefunden)";
      deleteVehicle _object;
      [] remoteExec ["mcd_fnc_intelFound", 2, false];
    } else {
      hint "Nichts Interessantes zu finden.";
    };
  };
  [10, [_object, _isIntel], _onComplete, {hint "abgebrochen"}, "Objekt untersuchen"] call ace_common_fnc_progressBar;
};

_intel addAction ["Objekt untersuchen", _action, [], 2, true, true, "", "true", 6];
