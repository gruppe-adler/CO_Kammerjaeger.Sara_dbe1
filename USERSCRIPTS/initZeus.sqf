allZeus = ["virtualZeus1", "virtualZeus2", "virtualZeus3"];
if ((str player) in allZeus) then {

  //Briefing Actions
  officer1 addAction ["Create Task1", {
    CREATETASK1 = true;
    publicVariable "CREATETASK1";
  }];
  officer1 addAction ["Create Task2", {
    CREATETASK2 = true;
    publicVariable "CREATETASK2";
  }];
  officer1 addAction ["Create Task3", {
    CREATETASK3 = true;
    publicVariable "CREATETASK3";
  }];
  officer1 addAction ["Briefing Complete", {
    BRIEFINGCOMPLETE = true;
    publicVariable "BRIEFINGCOMPLETE";
  }];
  officer1 addAction ["point at", {"ACE_gestures_point" call ace_gestures_fnc_playSignal}];
  officer1 addAction ["go", {officer1 playActionNow "gestureGo"}];


  //MODULE
  ["0_Transportheli", "Rampe auf", {(_this select 1) animateDoor ["CargoRamp_Open", 1]}] call Ares_fnc_RegisterCustomModule;
  ["0_Transportheli", "Rampe zu", {(_this select 1) animateDoor ["CargoRamp_Open", 0]}] call Ares_fnc_RegisterCustomModule;
  ["0_Transportheli", "Slingload", {(_this select 1) setSlingLoad cargocontainer1}] call Ares_fnc_RegisterCustomModule;
  ["0_Transportheli", "Un-Slingload", {(_this select 1) setSlingLoad objNull}] call Ares_fnc_RegisterCustomModule;

  ["1_Tasks", "Alle aufgesessen", {MOUNTUPCOMPLETE = true; publicVariable "MOUNTUPCOMPLETE"}] call Ares_fnc_RegisterCustomModule;
  ["1_Tasks", "NW eingenommen", {NETAKEN = true; publicVariable "NETAKEN"}] call Ares_fnc_RegisterCustomModule;

  ["2_Misc", "Mortar spawnen", {
    _mortar = "B_Mortar_01_F" createVehicle (_this select 0);
    _mortar removemagazineturret ["8Rnd_82mm_Mo_Flare_white", [0]];
    _mortar removemagazineturret ["8Rnd_82mm_Mo_Smoke_white", [0]];
    _mortar removemagazineturret ["8Rnd_82mm_Mo_shells", [0]];
    {_x addCuratorEditableObjects [[_mortar], false]} forEach [zeusModule_adminLogged, zeusModule_1, zeusModule_2, zeusModule_3];
  }] call Ares_fnc_RegisterCustomModule;

  ["2_Misc", "Intel spawnen", {
    _intel = "Land_File2_F" createVehicle (_this select 0);
    _intel setVariable ["isIntel", true, true];
    [_intel] remoteExec ["mcd_fnc_addIntelAction", 0, false];
    {_x addCuratorEditableObjects [[_intel], false]} forEach [zeusModule_adminLogged, zeusModule_1, zeusModule_2, zeusModule_3];
  }] call Ares_fnc_RegisterCustomModule;

  ["2_Misc", "equip FRIES", {
    _heli = _this select 1;
    [_heli] remoteExec ["ace_fastroping_fnc_equipFRIES",2,false];
  }] call Ares_fnc_RegisterCustomModule;
};
