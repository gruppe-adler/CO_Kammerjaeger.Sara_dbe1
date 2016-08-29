allIntelObjects = [];

_allFound = false;
_i = 0;
while {!_allFound} do {
  _intelName = format ["intel_%1", _i];
  if (!isNil _intelName) then {
    call compile format ["allIntelObjects pushBack %1; %1 setVariable ['isIntel', true]", _intelName];
  } else {
    _allFound = true;
  };

  _i =_i+1;
};
diag_log format ["initIntel.sqf - %1 real intel objects found.", _i-1];

_allFound = false;
_i = 0;
while {!_allFound} do {
  _intelName = format ["fakeIntel_%1", _i];
  if (!isNil _intelName) then {
    call compile format ["allIntelObjects pushBack %1", _intelName];
  } else {
    _allFound = true;
  };

  _i =_i+1;
};
diag_log format ["initIntel.sqf - %1 fake intel objects found.", _i-1];

{
  [_x] call mcd_fnc_addIntelAction;
} forEach allIntelObjects;
missionNamespace setVariable ["allIntelObjects", nil];
