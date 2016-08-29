params ["_vehicle"];
if (!local _vehicle) exitWith {};

_vehgroup = group _vehicle;
_vehicle setCombatMode "Blue";
_vehicle allowFleeing 0;
_vehgroup setBehaviour "Careless";
{_x disableAI "target";
_x disableAI "autotarget"} forEach (units group _vehicle);
(driver _vehicle) setSkill ["Courage",1];
(driver _vehicle) setSkill ["General",1];
