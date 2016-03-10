/*
    Raub Anfrage an den Server 
*/
private["_shop","_robber"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;

//Wenn nicht genug Cops online sind gibt er dieses aus
if(playersNumber west < 3) exitWith { hint "Die Kasse ist leer, komm später vorbei!"};
if(isNull _shop OR isNull _robber) exitWith {};

// Damit nur Zivilisten die Tankstelle ausrauben können
if(side _robber != civilian) exitWith { hint "Du bist ein Cop! " }; 
if (vehicle player != _robber) exitWith { hint "Aus einem Fahrzeug ausrauben? Wird bisschen schwer!" };

//versucht er ohne Waffe auszurauben, kommt diese Nachricht
if (currentWeapon _robber == "") exitWith { hint "Du machst mir keine Angst! Hau bloss ab" }; 
if(_robber distance _shop > 3) exitWith { hint "Du bist zu weit weg!" };

//Nachricht wird an Server gesendet.
[[_shop,_robber,_action],"TON_fnc_robShops",false,false] spawn life_fnc_MP; 
