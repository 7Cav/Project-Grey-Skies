/*
    File: KDF_3CB.sqf
    Author: 7th Cav Dev Team

    Description:
       Defines presets for OPFOR faction.
       

*/
//
rf_flag = "a3\Data_f\Flags\flag_csat_CO.paa";

// OPFOR Infantry - General
rf_rifleman =                 "O_Soldier_F";
rf_autorifleman =             "O_Soldier_AR_F";
rf_grenadier =                "O_Soldier_GL_F";
rf_lat =                      "O_Soldier_LAT_F";
rf_cls =                      "O_medic_F";
rf_tl =                       "O_Soldier_TL_F";
rf_sl =                       "O_Soldier_SL_F";

// OPFOR Infantry - Special Forces
rf_sf_rifleman =              "O_V_Soldier_LAT_hex_F";
rf_sf_autorifleman =          "O_V_Soldier_M_hex_F";
rf_sf_grenadier =             "O_V_Soldier_TL_hex_F";
rf_sf_lat =                   "O_V_Soldier_LAT_hex_F";
rf_sf_cls =                   "O_V_Soldier_Medic_hex_F";
rf_sf_tl =                    "O_V_Soldier_TL_hex_F";
rf_sf_sl =                    "O_V_Soldier_TL_hex_F";

// OPFOR Infantry - Sniper Team
rf_sniper =                   "O_sniper_F";
rf_spotter =                  "O_spotter_F";

// OPFOR Infantry - Weapons Team
rf_wp_machinegunner =         "O_HeavyGunner_F";
rf_wp_ammobearer =            "O_support_AMG_F";

// OPFOR Infantry - AT Team
rf_at_at =                    "O_Soldier_AT_F";
rf_at_ammobearer =            "O_Soldier_AAT_F";

// OPFOR Infantry - AA Team
rf_aa_aa =                    "O_Soldier_AA_F";
rf_aa_ammobearer =            "O_Soldier_AAA_F";

// OPFOR Crew
rf_ground_crew =              "O_crew_F";
rf_armor_crew =               "O_crew_F";
rf_rotary_crew =              "O_Pilot_F";
rf_fixed_crew =               "O_Fighter_Pilot_F";

// OPFOR Turret - Mortar Team
rf_mortar =                   "O_support_Mort_F"; 

// OPFOR Ground Vehicles

rf_trooptransport =           "O_Truck_03_covered_F"; // Requires 9 seats minimum
rf_motorized =                "O_LSV_02_armed_F"; // Must have turret
rf_mrap =                     "O_MRAP_02_hmg_F"; // Must have turret
rf_apc =                      "O_APC_Wheeled_02_rcws_v2_F";
rf_ifv =                      "O_APC_Tracked_02_cannon_F";
rf_tank_light =               "O_APC_Tracked_02_cannon_F";
rf_tank_heavy =               "O_MBT_02_cannon_F";
rf_sp_aa_gun =                "O_APC_Tracked_02_AA_F";
rf_sp_aa_missle =             "O_APC_Tracked_02_AA_F";

// OPFOR Rotary Vehicless
rf_rotary_transport =         "O_Heli_Transport_04_covered_F"; // Requires 9 seats minimum
rf_rotary_gunship =           "O_Heli_Attack_02_dynamicLoadout_F";
rf_rotary_attack_light =      "O_Heli_Attack_02_dynamicLoadout_F";
rf_rotary_attack_heavy =      "O_Heli_Attack_02_dynamicLoadout_F";

//OPFOR Fixed Wing
rf_fw_recon =                 "O_Plane_Fighter_02_Stealth_F";
rf_fw_cas =                   "O_Plane_Fighter_02_Stealth_F";
rf_fw_cap =                   "O_Plane_Fighter_02_Stealth_F";

//OPFOR Misc
rf_sp_artillery =             "O_MBT_02_arty_F";
rf_radar =                    "O_Radar_System_02_F";
rf_officer =                  "O_officer_F";
rf_officer_staff =            "O_officer_F";
rf_radioman =                 "O_officer_F";
rf_hq_building =              "Land_Cargo_HQ_V1_F";

/* GROUP ARRAYS - No Touchy */

rf_sentry_team = [

   rf_tl,
   rf_autorifleman

];

rf_fireteam = [

   rf_tl,
   rf_autorifleman,
   rf_lat,
   rf_grenadier

];

rf_squad = [

   rf_sl,
   rf_tl,
   rf_autorifleman,
   rf_lat,
   rf_grenadier,
   rf_tl,
   rf_autorifleman,
   rf_lat,
   rf_cls

];

rf_gun_team = [

   rf_tl,
   rf_wp_machinegunner,
   rf_wp_machinegunner,
   rf_wp_ammobearer

];

rf_at_team = [

   rf_tl,
   rf_at_at,
   rf_at_at,
   rf_at_ammobearer

];

rf_aa_team = [

   rf_tl,
   rf_aa_aa,
   rf_aa_aa,
   rf_aa_ammobearer

];

rf_hq_team = [

   rf_officer,
   rf_officer_staff,
   rf_officer_staff,
   rf_radioman

];
