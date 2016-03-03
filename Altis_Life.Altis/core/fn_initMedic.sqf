#include "..\script_macros.hpp"
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((FETCH_CONST(life_medicLevel)) < 1 && (FETCH_CONST(life_adminlevel) == 0)) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

if(EQUAL(LIFE_SETTINGS(getNumber,"allow_medic_weapons"),0)) then
{
	[] spawn
	{
		while {true} do
		{
			waitUntil {sleep 3; currentWeapon player != ""};
			removeAllWeapons player;
		};
	};
};

//
// XOXO Rettungshelfer
//
[] spawn {
	while {true} do {
		waitUntil {uniform player == "U_Rangemaster"};

		//
		// macht jeden Rucksack komplett rot
		//
		(backpackContainer player) setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,0,0,1)"];

		sleep 2;
		
		player setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,0,0,1)"];
		
		sleep 2;

		if ((FETCH_CONST(life_coplevel)) == 0) then {
			player setObjectTextureGlobal [0, "textures\medic_rettungshelfer.paa"];
		};
		
		if ((FETCH_CONST(life_coplevel)) == 1) then {
			player setObjectTextureGlobal [0, "textures\medic_rettungshelfer.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 2) then {
			player setObjectTextureGlobal [0, "textures\medic_rettungshelfer.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 3) then {
			player setObjectTextureGlobal [0, "textures\medic_rettungshelfer.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 4) then {
			player setObjectTextureGlobal [0, "textures\medic_rettungshelfer.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 5) then {
			player setObjectTextureGlobal [0, "textures\medic_rettungshelfer.paa"];
		};

		waitUntil {uniform player != "U_Rangemaster"};
	};
};

//
// XOXO Notarzt
//
[] spawn {
	while {true} do {
		waitUntil {uniform player == "U_C_Scientist"};

		//
		// macht jeden Rucksack komplett rot
		//
		(backpackContainer player) setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,0,0,1)"];

		sleep 2;
		
		player setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,1,1,1)"];
		
		sleep 2;

		if ((FETCH_CONST(life_coplevel)) == 0) then {
			player setObjectTextureGlobal [0, "textures\medic_notarzt.paa"];
		};
		
		if ((FETCH_CONST(life_coplevel)) == 1) then {
			player setObjectTextureGlobal [0, "textures\medic_notarzt.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 2) then {
			player setObjectTextureGlobal [0, "textures\medic_notarzt.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 3) then {
			player setObjectTextureGlobal [0, "textures\medic_notarzt.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 4) then {
			player setObjectTextureGlobal [0, "textures\medic_notarzt.paa"];
		};

		if ((FETCH_CONST(life_coplevel)) == 5) then {
			player setObjectTextureGlobal [0, "textures\medic_notarzt.paa"];
		};

		waitUntil {uniform player != "U_C_Scientist"};
	};
};

[] call life_fnc_spawnMenu;

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
