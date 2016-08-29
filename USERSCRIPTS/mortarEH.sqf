_mortareh = player addEventHandler ["WeaponAssembled", {
  _mortar = _this select 1;
  if (typeOf _mortar != "B_Mortar_01_F") exitWith {};
  if (count magazinesAmmo _mortar >= 6) then {
    _mortar removemagazineturret ["8Rnd_82mm_Mo_Flare_white", [0]];
    _mortar removemagazineturret ["8Rnd_82mm_Mo_shells", [0]];
  };
}];
