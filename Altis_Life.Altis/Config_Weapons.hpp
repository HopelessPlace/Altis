/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 6500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 },
            { "hgun_ACPC2_F", "", 11500, -1 },
            { "hgun_PDW2000_F", "", 20000, -1 },
            { "optic_ACO_grn_smg", "", 2500, 250 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_TRG20_F", "", 25000, 2500 },
            { "arifle_Katiba_F", "", 30000, 5000 },
            { "srifle_DMR_01_F", "", 50000, -1 },
            { "arifle_SDAR_F", "", 20000, 7500 },
            { "optic_ACO_grn", "", 3500, 350 },
            { "optic_Holosight", "", 3600, 275 },
            { "optic_Hamr", "", 7500, -1 },
            { "acc_flashlight", "", 1000, 100 }
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300 },
            { "30Rnd_65x39_caseless_green", "", 275 },
            { "10Rnd_762x54_Mag", "", 500 },
            { "20Rnd_556x45_UW_mag", "", 125 }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 1500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1 },
            { "hgun_ACPC2_F", "", 4500, -1 },
            { "hgun_PDW2000_F", "", 9500, -1 },
            { "optic_ACO_grn_smg", "", 950, 250 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "ToolKit", "", 1250, 75 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            
	    { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },		//Taser Gewehr
	    { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },		//P07 Taser
	    { "muzzle_snds_L", "", 650, -1 },				//Taser Schalldämpfer
	    { "acc_flashlight", "", 750, -1 },				//Waffenlampe
            { "optic_Holosight", "", 1200, -1 },			//Holo
            { "bipod_01_F_blk", "Zweibein", 500, -1},			//Zweibein
            { "NVGoggles", "Nachtsicht", 500, -1},			//Nachtsicht
	    { "Binocular", "", 150, -1 },				//Fernglas
            { "ItemGPS", "", 100, -1 },					//GPS
            { "ToolKit", "", 250, -1 },					//Werkzeug
            { "FirstAidKit", "", 150, -1 },				//Erster Hilfe
            { "Medikit", "", 1000, -1 }					//Verbandskasten
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },	//Taser Gewehr munni
            { "16Rnd_9x21_Mag", "", 25 },				//P07 munni
        };
    };

    class cop_pk {
        name = "Altis Kommissar Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "Du musst Kommissar sein!" };
        items[] = {
            
	    { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },		//Taser Gewehr
	    { "SMG_02_F", "", 30000, 10000 },				//Sting
	    { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },		//P07 Taser
	    { "hgun_P07_F", "", 7500, 1500 },				//P07
	    { "muzzle_snds_L", "", 650, -1 },				//Taser Schalldämpfer
	    { "MineDetector", "", 1000, -1 },				//Minensucher
	    { "acc_flashlight", "", 750, -1 },				//Waffenlampe
            { "optic_Holosight", "", 1200, -1 },			//Holo
            { "bipod_01_F_blk", "Zweibein", 500, -1},			//Zweibein
            { "NVGoggles", "Nachtsicht", 500, -1},			//Nachtsicht
	    { "Binocular", "", 150, -1 },				//Fernglas
            { "ItemGPS", "", 100, -1 },					//GPS
            { "ToolKit", "", 250, -1 },					//Werkzeug
            { "FirstAidKit", "", 150, -1 },				//Erster Hilfe
            { "Medikit", "", 1000, -1 }					//Verbandskasten
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },	//Taser Gewehr munni
	    { "30Rnd_65x39_caseless_mag", "", 130 },			//MXM munni
            { "30Rnd_65x39_caseless_mag_Tracer", "", 130 },		//MXM gummi munni
	    { "30Rnd_9x21_Mag", "", 250 },				//Sting munni
            { "16Rnd_9x21_Mag", "", 25 },				//P07 munni
        };
    };

    class cop_pok {
        name = "Altis Oberkommissar Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "Du muss Oberkommissar sein!" };
        items[] = {
	    
	    { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },		//Taser Gewehr
	    { "arifle_MXM_Black_F", "", 35000, 7500 },			//MXM
	    { "SMG_02_F", "", 30000, 10000 },				//Sting
	    { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },		//P07 Taser
	    { "hgun_P07_F", "", 7500, 1500 },				//P07
	    { "hgun_ACPC2_F", "", 17500, 10000 },			//ACP
	    { "muzzle_snds_L", "", 650, -1 },				//Taser Schalldämpfer
	    { "MineDetector", "", 1000, -1 },				//Minensucher
	    { "acc_flashlight", "", 750, -1 },				//Waffenlampe
            { "acc_pointer_IR", "", 750, -1 },				//Laserpointer
            { "optic_Holosight", "", 1200, -1 },			//Holo
            { "optic_Arco", "", 2500, -1 },				//Arco
            { "bipod_01_F_blk", "Zweibein", 500, -1},			//Zweibein
            { "NVGoggles", "Nachtsicht", 500, -1},			//Nachtsicht
	    { "Binocular", "", 150, -1 },				//Fernglas
            { "ItemGPS", "", 100, -1 },					//GPS
            { "ToolKit", "", 250, -1 },					//Werkzeug
            { "FirstAidKit", "", 150, -1 },				//Erster Hilfe
            { "Medikit", "", 1000, -1 }					//Verbandskasten
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },	//Taser Gewehr munni
	    { "30Rnd_65x39_caseless_mag", "", 130 },			//MXM munni
            { "30Rnd_65x39_caseless_mag_Tracer", "", 130 },		//MXM gummi munni
	    { "30Rnd_9x21_Mag", "", 250 },				//Sting munni
            { "16Rnd_9x21_Mag", "", 25 },				//P07 munni
	    { "9Rnd_45ACP_Mag", "", 200 }				//ACP munni
        };
    };
    
        class cop_phk {
        name = "Altis Hauptkommissar Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 4, "Du muss Hauptkommissar sein!" };
        items[] = {
	    
	    { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },		//Taser Gewehr
	    { "arifle_MXM_Black_F", "", 35000, 7500 },			//MXM
	    { "SMG_02_F", "", 30000, 10000 },				//Sting
	    { "srifle_EBR_F", "", 50000, 20000 },			//MK18
	    { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },		//P07 Taser
	    { "hgun_P07_F", "", 7500, 1500 },				//P07
	    { "hgun_ACPC2_F", "", 17500, 10000 },			//ACP
	    { "muzzle_snds_L", "", 650, -1 },				//Taser Schalldämpfer
	    { "MineDetector", "", 1000, -1 },				//Minensucher
	    { "acc_flashlight", "", 750, -1 },				//Waffenlampe
            { "acc_pointer_IR", "", 750, -1 },				//Laserpointer
            { "optic_Holosight", "", 1200, -1 },			//Holo
            { "optic_Arco", "", 2500, -1 },				//Arco
	    { "optic_Hamr", "", 3500, -1 },				//RCO
            { "optic_KHS_blk", "", 2500, -1 },				//Kahlia
            { "bipod_01_F_blk", "Zweibein", 500, -1},			//Zweibein
            { "NVGoggles", "Nachtsicht", 500, -1},			//Nachtsicht
	    { "Binocular", "", 150, -1 },				//Fernglas
            { "ItemGPS", "", 100, -1 },					//GPS
            { "ToolKit", "", 250, -1 },					//Werkzeug
            { "FirstAidKit", "", 150, -1 },				//Erster Hilfe
            { "Medikit", "", 1000, -1 }					//Verbandskasten
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },	//Taser Gewehr munni
	    { "30Rnd_65x39_caseless_mag", "", 130 },			//MXM munni
            { "30Rnd_65x39_caseless_mag_Tracer", "", 130 },		//MXM gummi munni
	    { "30Rnd_9x21_Mag", "", 250 },				//Sting munni
	    { "20Rnd_762x51_Mag", "", 500 },				//MK1/14/18 munni
            { "16Rnd_9x21_Mag", "", 25 },				//P07 munni
	    { "9Rnd_45ACP_Mag", "", 200 }				//ACP munni
        };
    };
    
    class cop_ephk {
        name = "Altis Erster Hauptkommissar Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 5, "Du musst Erster Hauptkommissar sein!" };
        items[] = {
	    
	    { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },		//Taser Gewehr
	    { "arifle_MXM_Black_F", "", 35000, 7500 },			//MXM
	    { "SMG_02_F", "", 30000, 10000 },				//Sting
	    { "srifle_DMR_06_camo_F", "", 50000, 20000 },		//MK14
	    { "srifle_EBR_F", "", 50000, 20000 },			//MK18
	    { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },		//P07 Taser
	    { "hgun_P07_F", "", 7500, 1500 },				//P07
	    { "hgun_ACPC2_F", "", 17500, 10000 },			//ACP
	    { "muzzle_snds_L", "", 650, -1 },				//Taser Schalldämpfer
	    { "MineDetector", "", 1000, -1 },				//Minensucher
	    { "acc_flashlight", "", 750, -1 },				//Waffenlampe
            { "acc_pointer_IR", "", 750, -1 },				//Laserpointer
            { "optic_Holosight", "", 1200, -1 },			//Holo
            { "optic_Arco", "", 2500, -1 },				//Arco
	    { "optic_Hamr", "", 3500, -1 },				//RCO
            { "optic_KHS_blk", "", 2500, -1 },				//Kahlia
	    { "optic_DMS", "", 2500, -1},				//DMS
            { "bipod_01_F_blk", "Zweibein", 500, -1},			//Zweibein
            { "NVGoggles", "Nachtsicht", 500, -1},			//Nachtsicht
            { "HandGrenade_Stone", "Blendgranate", 1700, -1 },		//Blendgranate
	    { "Binocular", "", 150, -1 },				//Fernglas
            { "ItemGPS", "", 100, -1 },					//GPS
            { "ToolKit", "", 250, -1 },					//Werkzeug
            { "FirstAidKit", "", 150, -1 },				//Erster Hilfe
            { "Medikit", "", 1000, -1 }					//Verbandskasten
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },	//Taser Gewehr munni
	    { "30Rnd_65x39_caseless_mag", "", 130 },			//MXM munni
            { "30Rnd_65x39_caseless_mag_Tracer", "", 130 },		//MXM gummi munni
	    { "30Rnd_9x21_Mag", "", 250 },				//Sting munni
	    { "20Rnd_762x51_Mag", "", 500 },				//MK1/14/18 munni
            { "16Rnd_9x21_Mag", "", 25 },				//P07 munni
	    { "9Rnd_45ACP_Mag", "", 200 }				//ACP munni
        };		
    };
    
        class cop_pra {
        name = "Altis Ratanwärter Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 6, "Du musst Ratanwärter sein!" };
        items[] = {
	    
	    { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },		//Taser Gewehr
	    { "arifle_MXM_Black_F", "", 35000, 7500 },			//MXM
	    { "SMG_02_F", "", 30000, 10000 },				//Sting
	    { "srifle_DMR_03_F", "", 50000, 20000 },			//MK1
	    { "srifle_DMR_06_camo_F", "", 50000, 20000 },		//MK14
	    { "srifle_EBR_F", "", 50000, 20000 },			//MK18
	    { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },		//P07 Taser
	    { "hgun_P07_F", "", 7500, 1500 },				//P07
	    { "hgun_ACPC2_F", "", 17500, 10000 },			//ACP
	    { "muzzle_snds_L", "", 650, -1 },				//Taser Schalldämpfer
	    { "MineDetector", "", 1000, -1 },				//Minensucher
	    { "acc_flashlight", "", 750, -1 },				//Waffenlampe
            { "acc_pointer_IR", "", 750, -1 },				//Laserpointer
            { "optic_Holosight", "", 1200, -1 },			//Holo
            { "optic_Arco", "", 2500, -1 },				//Arco
	    { "optic_Hamr", "", 3500, -1 },				//RCO
            { "optic_KHS_blk", "", 2500, -1 },				//Kahlia
	    { "optic_DMS", "", 2500, -1},				//DMS
            { "bipod_01_F_blk", "Zweibein", 500, -1},			//Zweibein
            { "NVGoggles", "Nachtsicht", 500, -1},			//Nachtsicht
            { "HandGrenade_Stone", "Blendgranate", 1700, -1 },		//Blendgranate
	    { "Binocular", "", 150, -1 },				//Fernglas
            { "ItemGPS", "", 100, -1 },					//GPS
            { "ToolKit", "", 250, -1 },					//Werkzeug
            { "FirstAidKit", "", 150, -1 },				//Erster Hilfe
            { "Medikit", "", 1000, -1 }					//Verbandskasten
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },	//Taser Gewehr munni
	    { "30Rnd_65x39_caseless_mag", "", 130 },			//MXM munni
            { "30Rnd_65x39_caseless_mag_Tracer", "", 130 },		//MXM gummi munni
	    { "30Rnd_9x21_Mag", "", 250 },				//Sting munni
	    { "20Rnd_762x51_Mag", "", 500 },				//MK1/14/18 munni
            { "16Rnd_9x21_Mag", "", 25 },				//P07 munni
	    { "9Rnd_45ACP_Mag", "", 200 }				//ACP munni
        };		
    };

        class cop_pr {
        name = "Altis Polizeirat Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 7, "Du musst Polizeirat sein!" };
        items[] = {
	    
	    { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },		//Taser Gewehr
	    { "arifle_MXM_Black_F", "", 35000, 7500 },			//MXM
	    { "SMG_02_F", "", 30000, 10000 },				//Sting
	    { "srifle_DMR_03_F", "", 50000, 20000 },			//MK1
	    { "srifle_DMR_06_camo_F", "", 50000, 20000 },		//MK14
	    { "srifle_EBR_F", "", 50000, 20000 },			//MK18
	    { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },		//P07 Taser
	    { "hgun_P07_F", "", 7500, 1500 },				//P07
	    { "hgun_ACPC2_F", "", 17500, 10000 },			//ACP
	    { "muzzle_snds_L", "", 650, -1 },				//Taser Schalldämpfer
	    { "MineDetector", "", 1000, -1 },				//Minensucher
	    { "acc_flashlight", "", 750, -1 },				//Waffenlampe
            { "acc_pointer_IR", "", 750, -1 },				//Laserpointer
            { "optic_Holosight", "", 1200, -1 },			//Holo
            { "optic_Arco", "", 2500, -1 },				//Arco
	    { "optic_Hamr", "", 3500, -1 },				//RCO
            { "optic_KHS_blk", "", 2500, -1 },				//Kahlia
	    { "optic_DMS", "", 2500, -1},				//DMS
            { "bipod_01_F_blk", "Zweibein", 500, -1},			//Zweibein
            { "NVGoggles", "Nachtsicht", 500, -1},			//Nachtsicht
            { "HandGrenade_Stone", "Blendgranate", 1700, -1 },		//Blendgranate
	    { "Binocular", "", 150, -1 },				//Fernglas
            { "ItemGPS", "", 100, -1 },					//GPS
            { "ToolKit", "", 250, -1 },					//Werkzeug
            { "FirstAidKit", "", 150, -1 },				//Erster Hilfe
            { "Medikit", "", 1000, -1 }					//Verbandskasten
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },	//Taser Gewehr munni
	    { "30Rnd_65x39_caseless_mag", "", 130 },			//MXM munni
            { "30Rnd_65x39_caseless_mag_Tracer", "", 130 },		//MXM gummi munni
	    { "30Rnd_9x21_Mag", "", 250 },				//Sting munni
	    { "20Rnd_762x51_Mag", "", 500 },				//MK1/14/18 munni
            { "16Rnd_9x21_Mag", "", 25 },				//P07 munni
	    { "9Rnd_45ACP_Mag", "", 200 }				//ACP munni
        };		
    };


    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, 45 },
            { "Binocular", "", 150, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "Medikit", "", 500, 450 },
            { "NVGoggles", "", 1200, 980 }
        };
        mags[] = {};
    };
};
