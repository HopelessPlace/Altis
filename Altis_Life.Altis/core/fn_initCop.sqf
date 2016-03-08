#include "..\script_macros.hpp"
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
private "_end";
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

if(life_blacklisted) exitWith {
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

//
// All cops must be whitelisted. Even Admins cannot play cops.
//
if(FETCH_CONST(life_coplevel) == 0) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

player setVariable["rank",(FETCH_CONST(life_coplevel)),true];

//
// XOXO Streifendienstuniform
//
[] spawn {
	while {true} do {
		waitUntil {uniform player == "U_Rangemaster"};

		//
		// macht jeden Rucksack komplett unsichtbar
		//
		// (backpackContainer player) setObjectTextureGlobal [0, "#(rgb,0,0,0)color(0,0,0,0)"];
		//
		
		player setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,0,0,0)"];
		
		if ((FETCH_CONST(life_coplevel)) == 0) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_1.paa"];
		};
		
		if ((FETCH_CONST(life_coplevel)) == 1) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_1.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 2) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_2.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 3) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_3.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 4) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_4.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 5) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_5.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 6) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_6.paa"];
		};
	
		if ((FETCH_CONST(life_coplevel)) == 7) then {
			player setObjectTextureGlobal [0, "textures\Cop_Uniform_7.paa"];
		};

		waitUntil {uniform player != "U_Rangemaster"};
	};
};

//
// MEK Einsatzuniform
//
[] spawn {
	while {true} do {
		waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
		
		//
		// macht jeden Rucksack komplett unsichtbar
		//
		// (backpackContainer player) setObjectTextureGlobal [0, "#(rgb,0,0,0)color(0,0,0,0)"];
		//
		
		player setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,0,0,0)"];

		if ((FETCH_CONST(life_coplevel)) == 0) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform.paa"];
		};
		
		if ((FETCH_CONST(life_coplevel)) == 1) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 2) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 3) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 4) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 5) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform_5.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 6) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform_6.paa"];
		};
	
		if ((FETCH_CONST(life_coplevel)) == 7) then {
			player setObjectTextureGlobal [0, "textures\Cop_MEK_Uniform_7.paa"];
		};

		waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
	};
};


[] call life_fnc_spawnMenu;


waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
