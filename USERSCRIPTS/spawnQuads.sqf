if (!isServer) exitWith {};

params [["_container", objNull]];

if (isNull _container) exitWith {};

_pos = getPos _container;
deleteVehicle _container;

_pos1 = _pos vectorAdd [0,0.2,0];
_pos2 = _pos vectorAdd [0,-0.2,0];

_pos1 = _pos1 findEmptyPosition [0,10,"B_Quadbike_01_F"];
_pos2 = _pos2 findEmptyPosition [0,10,"B_Quadbike_01_F"];

if (count _pos1 < 2) then {_pos1 = _pos};
if (count _pos2 < 2) then {_pos2 = _pos};

_veh = createVehicle ["B_Quadbike_01_F", _pos1, [], 0, "NONE"];
_veh = createVehicle ["B_Quadbike_01_F", _pos2, [], 0, "NONE"];
