#define true 1
#define false 0

/*
    Master settings for various features and functionality
*/
class Life_Settings {
    /* Persistent Settings */
    save_civ_weapons = true; //Allow civilians to save weapons on them?
    save_virtualItems = true; //Save Virtual items (all sides)?
    save_playerStats = true; //Save food & water (all sides)?
    save_veh_virtualItems = false; //Save Virtual items for vehicles (all sides)?
    save_veh_gear = true; //Save Gear for vehicles (all sides)?

    /* Clothing related settings */
    clothing_box = true; //true = preview inside a black box.  false = preview on map.
    clothing_masks[] = { "H_Shemag_olive", "H_Shemag_khk", "H_Shemag_tan", "H_Shemag_olive_hs", "H_ShemagOpen_khk", "H_ShemagOpen_tan", "G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "H_RacingHelmet_1_black_F", "H_RacingHelmet_1_red_F", "H_RacingHelmet_1_white_F", "H_RacingHelmet_1_blue_F", "H_RacingHelmet_1_yellow_F", "H_RacingHelmet_1_green_F", "H_RacingHelmet_1_F", "H_RacingHelmet_2_F", "H_RacingHelmet_3_F", "H_RacingHelmet_4_F" };

    /* Cop related settings */
    cops_online_min = 5; //minimum cops online for robbing a bank

    /* Medic related settings*/
    allow_medic_weapons = false; // true allows medics to hold/use weapons - false disallows
	
	//
	// if you set these values to false then three additional vms with while(true) will be spawned on the clients running arma3
	// be aware that it can induce load on the client of the player who is playing the medic
	//
	allow_medic_autohover = true;
	allow_medic_vehicle_thirdperson = true;
	allow_medic_player_thirdperson = true;
	
    /* Revive system settings */
    revive_cops = false; //true to enable cops the ability to revive everyone or false for only medics/ems.
    revive_fee = 30000; //Revive fee that players have to pay and medics / EMS are rewarded

    /* House related settings */
    house_limit = 2; //Maximum amount of houses a player can own.

    /* Gang related settings */
    gang_price = 5000000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
    gang_upgradeBase = 1000000; //The base cost for upgrading slots in a gang
    gang_upgradeMultiplier = 2.5; //Not sure if in use?

    /* Player-related systems */
    enable_fatigue = true; //Set to false to disable the ARMA 3 false system.
    total_maxWeight = 24; //Static variable for the maximum weight allowed without having a backpack
    paycheck_period = 5; //Scaled in minutes

    /* Impound Variables */
    impound_car = 350; //Price for impounding cars
    impound_boat = 250; //Price for impounding boats
    impound_air = 850; //Price for impounding helicopters / planes

    /* Initial Bank Amount */
    bank_cop = 7000; //Amount of cash on bank for new cops
    bank_civ = 10000; //Amount of cash on bank for new civillians
    bank_med = 65000; //Amount of cash on bank for new medics

    /* Paycheck Amount */
    paycheck_cop = 500; //Payment for cops
    paycheck_civ = 350; //Payment for civillians
    paycheck_med = 4500; //Payment for medics

    /* Federal Reserve settings */
    noatm_timer = 10; //Time in minutes that players won't be able to deposit his money after selling stolen gold

    /* Spyglass settings */
    spyglass_init = false; //Enable or disable spyglass

    /* ATM settings */
    global_ATM = true; //Allow users to access any ATM on the map.

    /* Pump settings */
    Pump_service = false; //Allow users to use pump service on the map. Default = false

    /* Skins settings */
    civ_skins = false; //Enable or disable civilian skins. Before enabling, you must add all the SEVEN files to textures folder. (It must be named as: civilian_uniform_1.jpg, civilian_uniform_2.jpg...civilian_uniform_6.jpg, civilian_uniform_7.jpg)

    /* Car-shop Settings */
    vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F", "B_G_Offroad_01_armed_F", "B_Boat_Armed_01_minigun_F", "C_Heli_light_01_red_F" };

    /* Job-related stuff */
    delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17", "dp_18", "dp_19", "dp_20", "dp_21", "dp_22", "dp_23", "dp_24", "dp_25" };

    /* Wanted System related settings */
    /* crimes[] = {String, Bounty, Code} */
    crimes[] = {
        {"STR_Crime_187V","65000","187V"},
        {"STR_Crime_187","200000","187"},
        {"STR_Crime_901","45000","901"},
        {"STR_Crime_215","20000","215"},
        {"STR_Crime_213","100000","213"},
        {"STR_Crime_211","10000","211"},
        {"STR_Crime_207","35000","207"},
        {"STR_Crime_207A","20000","207A"},
        {"STR_Crime_390","150000","390"},
        {"STR_Crime_487","15000","487"},
        {"STR_Crime_488","7000","488"},
        {"STR_Crime_480","10000","480"},
        {"STR_Crime_481","10000","481"},
        {"STR_Crime_482","50000","482"},
        {"STR_Crime_483","95000","483"},
        {"STR_Crime_459","65000","459"},
        {"STR_Crime_666","20000","666"},
        {"STR_Crime_667","450000","667"},
        {"STR_Crime_668","150000","668"},
        {"STR_Crime_1","25000","1"},
        {"STR_Crime_2","20000","2"},
        {"STR_Crime_3","15000","3"},
        {"STR_Crime_4","25000","4"},
        {"STR_Crime_5","10000","5"},
        {"STR_Crime_6","8000","6"},
        {"STR_Crime_7","15000","7"},
        {"STR_Crime_8","500000","8"},
        {"STR_Crime_9","500000","9"},
        {"STR_Crime_10","1500000","10"},
        {"STR_Crime_11","1000000","11"},
        {"STR_Crime_12","250000","12"},
        {"STR_Crime_13","150000","13"},
        {"STR_Crime_14","50000","14"},
        {"STR_Crime_15","250000","15"},
        {"STR_Crime_16","150000","16"},
        {"STR_Crime_17","10000","17"},
        {"STR_Crime_18","150000","18"},
        {"STR_Crime_19","250000","19"},
        {"STR_Crime_20","50000","20"},
        {"STR_Crime_21","50000","21"},
        {"STR_Crime_22","200000","22"},
        {"STR_Crime_23","500000","23"},
        {"STR_Crime_24","1000000","24"},
        {"STR_Crime_25","2000000","25"}
    };
};

#include "Config_Clothing.hpp"
#include "Config_Licenses.hpp"
#include "Config_Vehicles.hpp"
#include "Config_vItems.hpp"
#include "Config_Weapons.hpp"
