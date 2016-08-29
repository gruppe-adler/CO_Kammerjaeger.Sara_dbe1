mcd_fnc_intelFound = compile preprocessFileLineNumbers "USERSCRIPTS\fn_intelFound.sqf";
mcd_fnc_addIntelAction = compile preprocessFileLineNumbers "USERSCRIPTS\fn_addIntelAction.sqf";

if (hasInterface) then {
  [] execVM "USERSCRIPTS\initZeus.sqf";
  [] execVM "USERSCRIPTS\initIntel.sqf";
  [] execVM "USERSCRIPTS\mortarEH.sqf";
  [] execVM "USERSCRIPTS\containerAction.sqf";

  1 enableChannel false;
  2 enableChannel false;
};

if (isServer) then {
  BRIEFINGCOMPLETE = false;
  MOUNTUPCOMPLETE = false;
  MISSIONCOMPLETE = false;
  NETAKEN = false;
  INTELFOUND = 0;

  publicVariable "BRIEFINGCOMPLETE";
  publicVariable "MOUNTUPCOMPLETE";
  publicVariable "MISSIONCOMPLETE";
  publicVariable "NETAKEN";
  publicVariable "INTELFOUND";

  CREATETASK1 = false;
  CREATETASK2 = false;
  CREATETASK3 = false;
  publicVariable "CREATETASK1";
  publicVariable "CREATETASK2";
  publicVariable "CREATETASK3";
};
