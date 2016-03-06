/*
    File: fn_copLights.sqf
    Author: [GSN] Pager & [GSN] Paronity
    Website: GSNGaming.com
	Modified: Mr_Berac
    Date Created: 2.24.2015
    Date Modified: 3.3.2015 v1.3
*/

private ["_veh","_lightRed","_lightWhite","_lightBlue","_lightsOn","_brightnessHigh","_brightnessLow","_attach","_leftLights","_rightLights","_type","_attenuation"];

_veh = (_this select 0);
_type = typeOf _veh;
_sun = (sunOrMoon < 1);

if (isNil "_veh" || isNull _veh || !(_veh getVariable "lights")) exitWith {};

_lightRed = [0, 0, 255];
_lightWhite = [255, 255, 255];
_lightBlue = [0, 0, 255];

if (_sun) then
{
    _brightnessLow = 0;
    _brightnessHigh = 10;
    _attenuation = [0.001, 3000, 0, 125000];
} else {
    _brightnessLow = 0;
    _brightnessHigh = 60;
    _attenuation = [0.001, 3000, 0, 500000];
};

_flashes = 1;
_flashOn = 0.4;
_flashOff = 0.25;

_leftLights = [];
_rightLights = [];

_attach =
{
    _isLight = _this select 0;
    _color = _this select 1;
    _position = _this select 2;
    _light = "#lightpoint" createVehicleLocal getPos _veh;
    _light setLightBrightness 0;
    _light setLightAmbient [0,0,0];
    _light setLightAttenuation _attenuation;
    _light setLightIntensity 1000;
    _light setLightFlareSize 1;
    _light setLightFlareMaxDistance 150;
    _light setLightUseFlare true;
    _light setLightDayLight true;

    switch (_color) do
    {
        case "red": { _light setLightColor _lightRed; };
        case "white": { _light setLightColor _lightWhite; };
        case "blue": { _light setLightColor _lightBlue; };
    };

    if (_isLight) then
    {
        _leftLights pushBack [_light, _position];
    } else {
        _rightLights pushBack [_light, _position];
    };

    _light lightAttachObject [_veh, _position];
};

switch (_type) do
{	
	case "B_Quadbike_01_F":
	{
		[true, "blue", [-0.07, 1, -0.7]] call _attach;
		[false, "red", [0.07, 1, -0.7]] call _attach;
	};
    case "C_Offroad_01_F":
    {
        [false, "red", [-0.44, 0, 0.525]] call _attach;
        [true, "blue", [0.345, 0, 0.525]] call _attach;
        [false, "red", [0.575, -2.95, -0.77]] call _attach;
        [true, "blue", [-0.645, -2.95, -0.77]] call _attach;
        [false, "white", [0.61, 2.2825, -0.355]] call _attach;
        [true, "white", [-0.695, 2.2825, -0.355]] call _attach;
    };
	
	 case "C_Offroad_01_repair_F":
    {
        [false, "red", [-0.44, 0, 0.525]] call _attach;
        [true, "blue", [0.345, 0, 0.525]] call _attach;
        [false, "red", [0.575, -2.95, -0.77]] call _attach;
        [true, "blue", [-0.645, -2.95, -0.77]] call _attach;
        [false, "white", [0.61, 2.2825, -0.355]] call _attach;
        [true, "white", [-0.695, 2.2825, -0.355]] call _attach;
    };

    case "C_SUV_01_F":
    {
        [false, "red", [-0.39, 2.28, -0.52]] call _attach;
        [true, "blue", [0.38, 2.28, -0.52]] call _attach;
        [false, "red", [-0.86, -2.75, -0.18]] call _attach;
        [true, "blue", [0.86, -2.75, -0.18]] call _attach;
        [false, "white", [0.8, 1.95, -0.48]] call _attach;
        [true, "white", [-0.8, 1.95, -0.48]] call _attach;

    };
	
	case "C_Van_01_box_F":
	{
		[false, "white", [0.785, 1.7825, -0.315]] call _attach;
		[true, "white", [-0.785, 1.7825, -0.315]] call _attach;
		   
		[false, "red", [0.72, -3.46, 1.3]] call _attach;
		[true, "blue", [-0.72, -3.46, 1.3]] call _attach;
			
		[false, "red", [-0.72, -0.2, 1.495]] call _attach;
		[true, "blue", [0.72, -0.2, 1.495]] call _attach;
			
	};

    case "C_Hatchback_01_sport_F":
    {
        [false, "red", [-0.03, -0, 0.2]] call _attach;
        [true, "blue", [-0.03, -0, 0.2]] call _attach;
        [false, "red", [-0.8, -2.25, -0.3]] call _attach;
        [true, "blue", [0.78, -2.25, -0.3]] call _attach;
        [false, "white", [0.75, 1.615, -0.52]] call _attach;
        [true, "white", [-0.8, 1.615, -0.525]] call _attach;
    };
	
	case "C_Hatchback_01_F":
	{
		[false, "red", [-0.03, -0, 0.2]] call _attach;
        [true, "blue", [-0.03, -0, 0.2]] call _attach;
        [false, "red", [-0.8, -2.25, -0.3]] call _attach;
        [true, "blue", [0.78, -2.25, -0.3]] call _attach;
        [false, "white", [0.75, 1.615, -0.52]] call _attach;
        [true, "white", [-0.8, 1.615, -0.525]] call _attach;
    };

    case "B_MRAP_01_F":
    {
        [false, "red", [-0.85, -0.9, 0.6]] call _attach;
        [true, "blue", [0.85, -0.9, 0.6]] call _attach;
        [true, "red", [-0.93, -2.8, 0.6]] call _attach;
        [false, "blue", [0.93, -2.8, 0.6]] call _attach;
        [true, "white", [-0.85, 1.475, -0.75]] call _attach;
        [false, "white", [0.85, 1.475, -0.75]] call _attach;
    };
	
	case "I_MRAP_03_F":
	{
		[true, "red", [-0.87, 2.2, -0.75]] call _attach;
		[false, "blue", [0.87, 2.2, -0.75]] call _attach;
		[false, "blue", [1.10, -0.55, 0.5]] call _attach;
		[true, "red", [-1.10, -0.55, 0.5]] call _attach;
		[false, "white", [-1.05, 2.25, -0.3]] call _attach;
		[true, "white", [1.05, 2.25, -0.3]] call _attach;
	};
	
	case "O_MRAP_02_F":
	{
		[false, "blue", [1.175, -1.5, 0.365]] call _attach;
		[true, "red", [-1.175, -1.5, 0.365]] call _attach;
		[false, "red", [0.4325, -1.5, 0.6275]] call _attach;
		[true, "blue", [0.4325, -1.5, 0.6275]] call _attach;
		[false, "white", [-0.775, 1.475, -1]] call _attach;
		[true, "white", [0.775, 1.475, -1]] call _attach;
	};
	
	case "B_Truck_01_mover_F":
    {
        [false, "red", [-0.77, 4.55, -0.18]] call _attach;
        [true, "red", [0.77, 4.55, -0.18]] call _attach;
		
        [true, "blue", [-0.66, -1.35, -0.09]] call _attach;
        [true, "red", [0.66, -1.35, -0.09]] call _attach;
		
        [true, "white", [-0.95, 4.55, -0.18]] call _attach;
        [false, "white", [0.95, 4.55, -0.18]] call _attach;
    };
	case "B_Truck_01_medical_F":
	{
		[true, "white", [-0.85, 5.1, -0.5]] call _attach;
		[false, "white", [0.85, 5.1, -0.5]] call _attach;
			
		[true, "red", [-1.1, -5.1, -0.65]] call _attach;
		[false, "blue", [1.1, -5.1, -0.65]] call _attach;
				
		[false, "red", [-0.9, 4.7, 0.45]] call _attach;
		[true, "blue", [0.9, 4.7, 0.45]] call _attach;
			  
	};
	case "B_Truck_01_covered_F":
	{
		[true, "white", [-0.85, 5.1, -0.5]] call _attach;
		[false, "white", [0.85, 5.1, -0.5]] call _attach;
			
		[true, "red", [-1.1, -5.1, -0.65]] call _attach;
		[false, "blue", [1.1, -5.1, -0.65]] call _attach;
				
		[false, "red", [-0.9, 4.7, 0.45]] call _attach;
		[true, "blue", [0.9, 4.7, 0.45]] call _attach;
			  
	};
	case "B_Truck_01_transport_F":
	{
		[true, "white", [-0.85, 5.1, -0.5]] call _attach;
		[false, "white", [0.85, 5.1, -0.5]] call _attach;
			
		[true, "red", [-1.1, -5.1, -0.65]] call _attach;
		[false, "blue", [1.1, -5.1, -0.65]] call _attach;
				
		[false, "red", [-0.9, 4.7, 0.45]] call _attach;
		[true, "blue", [0.9, 4.7, 0.45]] call _attach;
			  
	};
	 case "B_Heli_Light_01_F":
        {
            [true, "red", [-0.3, 1.82, -0.6]] call _attach;
            [false, "blue", [0.3, 1.82, -0.6]] call _attach;

          
                [false, "blue", [-0.8, 1.25, -1]] call _attach;
                [true, "red", [0.8,  1.25, -1]] call _attach;

                [true, "blue", [0.8, -0.2, -1]] call _attach;
                [false, "red", [-0.8, -0.2, -1]] call _attach;

                [false, "blue", [0.08, -4.55, 1.25]] call _attach;
                [true, "red", [0.14, -4.55, 1.25]] call _attach;

                [true, "blue", [0.07, -4.05, -0.1]] call _attach;
                [false, "red", [0.14, -4.05, -0.1]] call _attach;
           
        };
		
		 case "C_Heli_Light_01_civil_F":
        {
            [true, "red", [-0.3, 1.82, -0.6]] call _attach;
            [false, "blue", [0.3, 1.82, -0.6]] call _attach;

           
                [false, "blue", [-0.8, 1.25, -1]] call _attach;
                [true, "red", [0.8,  1.25, -1]] call _attach;

                [true, "blue", [0.8, -0.2, -1]] call _attach;
                [false, "red", [-0.8, -0.2, -1]] call _attach;

                [false, "blue", [0.08, -4.55, 1.25]] call _attach;
                [true, "red", [0.14, -4.55, 1.25]] call _attach;

                [true, "blue", [0.07, -4.05, -0.1]] call _attach;
                [false, "red", [0.14, -4.05, -0.1]] call _attach;
          
        };
		
        case "B_Heli_Transport_03_unarmed_F":
        {
            [true, "red", [-0.4, 8.5, -1.85]] call _attach;
            [false, "blue", [0.4, 8.5, -1.85]] call _attach;

          
                [false, "red", [-2.05, 3.5, -1.9]] call _attach;
                [true, "blue", [1.9,  3.5, -1.9]] call _attach;

                [true, "blue", [-2.05, -1, -1.9]] call _attach;
                [false, "red", [1.9, -1, -1.9]] call _attach;

                [false, "red", [-1.65, -3.85, -1]] call _attach;
                [true, "red", [0.8, -5.33, -0.1]] call _attach;

                [true, "blue", [-0.9, -5.33, -0.1]] call _attach;
                [false, "blue", [1.55, -3.85, -1]] call _attach;
          
        };
        case "I_Heli_light_03_unarmed_F":
        {
            [true, "blue", [-0.37, 6.25, -0.93]] call _attach;

            [false, "blue", [0.37, 6.25, -0.93]] call _attach;

                [false, "red", [-1.2, 3.85, -1.5]] call _attach;
                [true, "blue", [1.2, 3.85, -1.5]] call _attach;

                [true, "blue", [0.5, -0.26, -0.17]] call _attach;
                [false, "red", [-0.5, -0.26, -0.17]] call _attach;

                [false, "red", [-1.26, -4.35, -0.05]] call _attach;
                [true, "red", [1.25, -4.35, -0.05]] call _attach;

                [true, "blue", [-1.26, -3.95, -0.64]] call _attach;
                [false, "blue", [1.25, -3.95, -0.64]] call _attach;
           
            
           
        };
        case "B_Heli_Transport_01_F":
        {
            [true, "blue", [-0.37, 5.2, -1.7]] call _attach;
			[false, "blue", [0.37, 5.2, -1.7]] call _attach;

                [false, "red", [-0.9, 3, -1.5]] call _attach;
                [true, "red", [0.9, 3, -1.5]] call _attach;

                [true, "blue", [0.8, -1, 0.4]] call _attach;
                [false, "blue", [-0.8, -1, 0.4]] call _attach;

                [true, "red", [-1.35, -4.9, 0]] call _attach;
                [false, "red", [1.35, -4.9, 0]] call _attach;

                [false, "blue", [-1.35, -4.64, -0.77]] call _attach;
                [true, "blue", [1.35, -4.64, -0.77]] call _attach;
          
               
           
        };
        case "O_Heli_Light_02_unarmed_F":
        {
            [true, "blue", [0.7, 6.85, -1.25]] call _attach;

            [false, "blue", [-0.7, 6.85, -1.25]] call _attach;

            [false, "red", [-1.1, 2.9, -1.56]] call _attach;
                [true, "red", [1.2, 2.9, -1.56]] call _attach;

                [true, "blue", [0.65, -0.7, -0.2]] call _attach;
                [false, "blue", [-0.55, -0.7, -0.2]] call _attach;

                [false, "red", [-0.04, -7.1, 0.7]] call _attach;
                [true, "blue", [0.19, -7.1, 0.7]] call _attach;

                [true, "blue", [-0.15, -6, -0.85]] call _attach;
                [false, "red", [0.25, -6, -0.85]] call _attach;
         
                
        };
    
	
	
	
};

_lightsOn = true;
while {(alive _veh)} do
{
    if (!(_veh getVariable "lights")) exitWith {};
    if (_lightsOn) then
    {
        for [{_i=0}, {_i<_flashes}, {_i=_i+1}] do
        {
            { (_x select 0) setLightBrightness _brightnessHigh; } forEach _leftLights;
            uiSleep _flashOn;
            { (_x select 0) setLightBrightness _brightnessLow; } forEach _leftLights;
            uiSleep _flashOff;
        };
        { (_x select 0) setLightBrightness 0; } forEach _leftLights;

        for [{_i=0}, {_i<_flashes}, {_i=_i+1}] do
        {
            { (_x select 0) setLightBrightness _brightnessHigh; } forEach _rightLights;
            uiSleep _flashOn;
            { (_x select 0) setLightBrightness _brightnessLow; } forEach _rightLights;
            uiSleep _flashOff;
        };
        { (_x select 0) setLightBrightness 0; } forEach _rightLights;
    };
};

{ deleteVehicle (_x select 0) } foreach _leftLights;
{ deleteVehicle (_x select 0) } foreach _rightLights;

_leftLights = [];
_rightLights = [];
 
