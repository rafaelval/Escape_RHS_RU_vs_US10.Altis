/*
 * Description: This file contains the vehicle types and unit types for the units spawned in the mission, and the weapons and magazines found in ammo boxes/cars.
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 */

private ["_enemyFrequency"];

_enemyFrequency = _this select 0;

//Sides

A3E_VAR_Side_Blufor = east; // playerside, RHS AFRF, Russian VDV flora
A3E_VAR_Side_Opfor = west; // RHS USAF, US-Army OCP and USMC woodland
A3E_VAR_Side_Ind = resistance; // RHS SAF, KOF Oakleaf and Airborne

A3E_VAR_Flag_Opfor = "\A3\Data_F\Flags\Flag_nato_CO.paa";
A3E_VAR_Flag_Ind = "\A3\Data_F\Flags\Flag_green_CO.paa";

A3E_VAR_Side_Blufor_Str = format["%1",A3E_VAR_Side_Blufor];
A3E_VAR_Side_Opfor_Str = format["%1",A3E_VAR_Side_Opfor];
A3E_VAR_Side_Ind_Str = format["%1",A3E_VAR_Side_Ind];

// Random array. Start position guard types around the prison.
a3e_arr_Escape_StartPositionGuardTypes = [
	"rhssaf_army_m93_oakleaf_summer_rifleman_m21"
	,"rhssaf_army_m93_oakleaf_summer_rifleman_m70"
	,"rhssaf_army_m93_oakleaf_summer_crew"
	,"rhssaf_army_m93_oakleaf_summer_officer"
	,"rhssaf_army_m93_oakleaf_summer_gl"];

// Prison backpack secondary weapon (and corresponding magazine type).
a3e_arr_PrisonBackpackWeapons = [];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_pistol_P226R_357Combat","hlc_12Rnd_357SIG_B_P226"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_pistol_P226R_357Combat","hlc_12Rnd_357SIG_B_P226"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_pistol_P226R","hlc_15Rnd_9x19_B_P226"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_pistol_P226R","hlc_15Rnd_9x19_B_P226"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_pistol_M11","hlc_13Rnd_9x19_B_P226"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_pistol_M11","hlc_13Rnd_9x19_B_P226"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp5a3","hlc_30Rnd_9x19_B_MP5"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_9mmar","hlc_32Rnd_9x19_B_sten"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp510","hlc_30Rnd_10mm_B_MP5"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp5k_PDW","hlc_30Rnd_9x19_B_MP5"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp5sd5","hlc_30Rnd_9x19_B_MP5"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp5n","hlc_30Rnd_9x19_B_MP5"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp5k","hlc_30Rnd_9x19_B_MP5"];
a3e_arr_PrisonBackpackWeapons pushback ["hlc_smg_mp5sd6","hlc_30Rnd_9x19_B_MP5"];


/* US pistols
a3e_arr_PrisonBackpackWeapons pushback ["rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP"];
a3e_arr_PrisonBackpackWeapons pushback ["rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ"];
a3e_arr_PrisonBackpackWeapons pushback ["rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP"];
a3e_arr_PrisonBackpackWeapons pushback ["rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP"];
a3e_arr_PrisonBackpackWeapons pushback ["rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP"];
a3e_arr_PrisonBackpackWeapons pushback ["rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ"];
a3e_arr_PrisonBackpackWeapons pushback ["rhsusf_weap_MP7A2","rhsusf_mag_40Rnd_46x30_FMJ"];
a3e_arr_PrisonBackpackWeapons pushback ["rhs_weap_m3a1","rhsgref_30rnd_1143x23_M1911B_SMG"];

*/

// Random array. Civilian vehicle classes for ambient traffic.
a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = [
	"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_Offroad_01_F"
	,"C_Quadbike_01_F"
	,"C_SUV_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_Offroad_01_F"
	,"C_Quadbike_01_F"
	,"C_SUV_01_F"
	,"C_Van_01_box_F"
	,"C_Van_01_transport_F"
	,"C_Van_01_fuel_F"
	,"C_Truck_02_covered_F"
	,"C_Offroad_01_repair_F"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_box_F"
	,"C_Truck_02_transport_F"];
	if(Param_UseDLCApex==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_02_unarmed_F";
	};
	if(Param_UseDLCLaws==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_medevac_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_vehicle_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_service_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_transport_F";
	};

// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {//Few (1-3)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"rhsusf_m998_w_s_2dr"//USMC
		,"rhsusf_m998_w_s_2dr_halftop"//USMC
		,"rhsusf_m998_w_s_2dr_fulltop"//USMC
		,"rhsusf_m998_w_s_4dr"//USMC
		,"rhsusf_m998_w_s_4dr_halftop"//USMC
		,"rhsusf_m998_w_s_4dr_fulltop"//USMC
		,"rhsusf_m1025_w_s"//USMC
		,"rhsusf_m1025_w_s_m2"//USMC
		,"rhsusf_m1025_w_s_Mk19"//USMC
		,"rhsusf_m1043_w_s"//USMC
		,"rhsusf_m1043_w_s_m2"//USMC
		,"rhsusf_m1043_w_s_mk19"//USMC
		,"rhsusf_m1045_w_s"//USMC
		,"rhsusf_M1078A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy"
		,"rhsusf_M1083A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1083A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy"
		,"rhsusf_M977A4_usarmy_wd"
		,"rhsusf_M977A4_AMMO_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_usarmy_wd"
		,"rhsusf_M977A4_BKIT_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_AMMO_BKIT_usarmy_wd"
		,"rhsusf_M977A4_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd"
		,"rhsusf_M978A4_usarmy_wd"
		,"rhsusf_M978A4_BKIT_usarmy_wd"
		,"rhsusf_M1117_W"
		,"rhsusf_M1220_usarmy_wd"
		,"rhsusf_M1220_M153_M2_usarmy_wd"
		,"rhsusf_M1220_M2_usarmy_wd"
		,"rhsusf_M1220_MK19_usarmy_wd"
		,"rhsusf_M1230_M2_usarmy_wd"
		,"rhsusf_M1230_MK19_usarmy_wd"
		,"rhsusf_M1230a1_usarmy_wd"
		,"rhsusf_M1232_usarmy_wd"
		,"rhsusf_M1232_MC_M2_usmc_wd"//USMC
		,"rhsusf_M1232_MC_MK19_usmc_wd"//USMC
		,"rhsusf_M1237_M2_usarmy_wd"
		,"rhsusf_M1237_MK19_usarmy_wd"
		,"rhsusf_CGRCAT1A2_usmc_wd"//USMC
		,"rhsusf_CGRCAT1A2_M2_usmc_wd"//USMC
		,"rhsusf_CGRCAT1A2_Mk19_usmc_wd"//USMC
		,"rhsusf_m113_usarmy"
		,"rhsusf_m113_usarmy_M240"
		,"rhsusf_m113_usarmy_MK19"
		,"rhsusf_m113_usarmy_supply"
		,"rhsusf_m113_usarmy_M2_90"
		,"rhsusf_m113_usarmy_MK19_90"
		,"rhsusf_m113_usarmy_medical"
		,"rhsusf_m113_usarmy_unarmed"
		,"RHS_M6_wd"
		,"RHS_M6_wd"
		,"RHS_M2A2_wd"
		,"RHS_M2A2_BUSKI_WD"
		,"RHS_M2A3_wd"
		,"RHS_M2A3_BUSKI_wd"
		,"RHS_M2A3_BUSKIII_wd"
		,"rhsusf_m1a1aimwd_usarmy"
		,"rhsusf_m1a1aim_tuski_wd"
		,"rhsusf_m1a2sep1wd_usarmy"
		,"rhsusf_m1a2sep1tuskiwd_usarmy"
		,"rhsusf_m1a2sep1tuskiiwd_usarmy"
		,"rhsusf_m109_usarmy"
		,"rhsusf_M142_usmc_WD"];//USMC
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"rhssaf_m998_olive_2dr_fulltop"
		,"rhssaf_m998_olive_2dr_halftop"
		,"rhssaf_m1025_olive"
		,"rhssaf_m1025_olive_m2"
		,"rhssaf_army_ural"
		,"rhssaf_army_ural_open"
		,"rhssaf_army_ural_fuel"
		,"rhssaf_army_pts"
		,"rhssaf_army_t72s"];
    };
    case 2: {//Some (4-6)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"rhsusf_m998_w_s_2dr"//USMC
		,"rhsusf_m998_w_s_2dr_halftop"//USMC
		,"rhsusf_m998_w_s_2dr_fulltop"//USMC
		,"rhsusf_m998_w_s_4dr"//USMC
		,"rhsusf_m998_w_s_4dr_halftop"//USMC
		,"rhsusf_m998_w_s_4dr_fulltop"//USMC
		,"rhsusf_m1025_w_s"//USMC
		,"rhsusf_m1025_w_s_m2"//USMC
		,"rhsusf_m1025_w_s_Mk19"//USMC
		,"rhsusf_m1043_w_s"//USMC
		,"rhsusf_m1043_w_s_m2"//USMC
		,"rhsusf_m1043_w_s_mk19"//USMC
		,"rhsusf_m1045_w_s"//USMC
		,"rhsusf_M1078A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy"
		,"rhsusf_M1083A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1083A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy"
		,"rhsusf_M977A4_usarmy_wd"
		,"rhsusf_M977A4_AMMO_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_usarmy_wd"
		,"rhsusf_M977A4_BKIT_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_AMMO_BKIT_usarmy_wd"
		,"rhsusf_M977A4_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd"
		,"rhsusf_M978A4_usarmy_wd"
		,"rhsusf_M978A4_BKIT_usarmy_wd"
		,"rhsusf_M1117_W"
		,"rhsusf_M1220_usarmy_wd"
		,"rhsusf_M1220_M153_M2_usarmy_wd"
		,"rhsusf_M1220_M2_usarmy_wd"
		,"rhsusf_M1220_MK19_usarmy_wd"
		,"rhsusf_M1230_M2_usarmy_wd"
		,"rhsusf_M1230_MK19_usarmy_wd"
		,"rhsusf_M1230a1_usarmy_wd"
		,"rhsusf_M1232_usarmy_wd"
		,"rhsusf_M1232_MC_M2_usmc_wd"//USMC
		,"rhsusf_M1232_MC_MK19_usmc_wd"//USMC
		,"rhsusf_M1237_M2_usarmy_wd"
		,"rhsusf_M1237_MK19_usarmy_wd"
		,"rhsusf_CGRCAT1A2_usmc_wd"//USMC
		,"rhsusf_CGRCAT1A2_M2_usmc_wd"//USMC
		,"rhsusf_CGRCAT1A2_Mk19_usmc_wd"//USMC
		,"rhsusf_m113_usarmy"
		,"rhsusf_m113_usarmy_M240"
		,"rhsusf_m113_usarmy_MK19"
		,"rhsusf_m113_usarmy_supply"
		,"rhsusf_m113_usarmy_M2_90"
		,"rhsusf_m113_usarmy_MK19_90"
		,"rhsusf_m113_usarmy_medical"
		,"rhsusf_m113_usarmy_unarmed"
		,"RHS_M6_wd"
		,"RHS_M6_wd"
		,"RHS_M2A2_wd"
		,"RHS_M2A2_BUSKI_WD"
		,"RHS_M2A3_wd"
		,"RHS_M2A3_BUSKI_wd"
		,"RHS_M2A3_BUSKIII_wd"
		,"rhsusf_m1a1aimwd_usarmy"
		,"rhsusf_m1a1aim_tuski_wd"
		,"rhsusf_m1a2sep1wd_usarmy"
		,"rhsusf_m1a2sep1tuskiwd_usarmy"
		,"rhsusf_m1a2sep1tuskiiwd_usarmy"
		,"rhsusf_m109_usarmy"
		,"rhsusf_M142_usmc_WD"];//USMC
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"rhssaf_m998_olive_2dr_fulltop"
		,"rhssaf_m998_olive_2dr_halftop"
		,"rhssaf_m1025_olive"
		,"rhssaf_m1025_olive_m2"
		,"rhssaf_army_ural"
		,"rhssaf_army_ural_open"
		,"rhssaf_army_ural_fuel"
		,"rhssaf_army_pts"
		,"rhssaf_army_t72s"];
    };
    default {//A lot (7-8)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"rhsusf_m998_w_s_2dr"//USMC
		,"rhsusf_m998_w_s_2dr_halftop"//USMC
		,"rhsusf_m998_w_s_2dr_fulltop"//USMC
		,"rhsusf_m998_w_s_4dr"//USMC
		,"rhsusf_m998_w_s_4dr_halftop"//USMC
		,"rhsusf_m998_w_s_4dr_fulltop"//USMC
		,"rhsusf_m1025_w_s"//USMC
		,"rhsusf_m1025_w_s_m2"//USMC
		,"rhsusf_m1025_w_s_Mk19"//USMC
		,"rhsusf_m1043_w_s"//USMC
		,"rhsusf_m1043_w_s_m2"//USMC
		,"rhsusf_m1043_w_s_mk19"//USMC
		,"rhsusf_m1045_w_s"//USMC
		,"rhsusf_M1078A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy"
		,"rhsusf_M1083A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1083A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_B_WD_fmtv_usarmy"
		,"rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy"
		,"rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy"
		,"rhsusf_M977A4_usarmy_wd"
		,"rhsusf_M977A4_AMMO_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_usarmy_wd"
		,"rhsusf_M977A4_BKIT_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_AMMO_BKIT_usarmy_wd"
		,"rhsusf_M977A4_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd"
		,"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd"
		,"rhsusf_M978A4_usarmy_wd"
		,"rhsusf_M978A4_BKIT_usarmy_wd"
		,"rhsusf_M1117_W"
		,"rhsusf_M1220_usarmy_wd"
		,"rhsusf_M1220_M153_M2_usarmy_wd"
		,"rhsusf_M1220_M2_usarmy_wd"
		,"rhsusf_M1220_MK19_usarmy_wd"
		,"rhsusf_M1230_M2_usarmy_wd"
		,"rhsusf_M1230_MK19_usarmy_wd"
		,"rhsusf_M1230a1_usarmy_wd"
		,"rhsusf_M1232_usarmy_wd"
		,"rhsusf_M1232_MC_M2_usmc_wd"//USMC
		,"rhsusf_M1232_MC_MK19_usmc_wd"//USMC
		,"rhsusf_M1237_M2_usarmy_wd"
		,"rhsusf_M1237_MK19_usarmy_wd"
		,"rhsusf_CGRCAT1A2_usmc_wd"//USMC
		,"rhsusf_CGRCAT1A2_M2_usmc_wd"//USMC
		,"rhsusf_CGRCAT1A2_Mk19_usmc_wd"//USMC
		,"rhsusf_m113_usarmy"
		,"rhsusf_m113_usarmy_M240"
		,"rhsusf_m113_usarmy_MK19"
		,"rhsusf_m113_usarmy_supply"
		,"rhsusf_m113_usarmy_M2_90"
		,"rhsusf_m113_usarmy_MK19_90"
		,"rhsusf_m113_usarmy_medical"
		,"rhsusf_m113_usarmy_unarmed"
		,"RHS_M6_wd"
		,"RHS_M6_wd"
		,"RHS_M2A2_wd"
		,"RHS_M2A2_BUSKI_WD"
		,"RHS_M2A3_wd"
		,"RHS_M2A3_BUSKI_wd"
		,"RHS_M2A3_BUSKIII_wd"
		,"rhsusf_m1a1aimwd_usarmy"
		,"rhsusf_m1a1aim_tuski_wd"
		,"rhsusf_m1a2sep1wd_usarmy"
		,"rhsusf_m1a2sep1tuskiwd_usarmy"
		,"rhsusf_m1a2sep1tuskiiwd_usarmy"
		,"rhsusf_m109_usarmy"
		,"rhsusf_M142_usmc_WD"];//USMC
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"rhssaf_m998_olive_2dr_fulltop"
		,"rhssaf_m998_olive_2dr_halftop"
		,"rhssaf_m1025_olive"
		,"rhssaf_m1025_olive_m2"
		,"rhssaf_army_ural"
		,"rhssaf_army_ural_open"
		,"rhssaf_army_ural_fuel"
		,"rhssaf_army_pts"
		,"rhssaf_army_t72s"];
    };
};

// Random array. General infantry types. E.g. village patrols, ambient infantry, ammo depot guards, communication center guards, etc.
a3e_arr_Escape_InfantryTypes = [
	"rhsusf_army_ocp_officer"
	,"rhsusf_army_ocp_squadleader"
	,"rhsusf_army_ocp_teamleader"
	,"rhsusf_army_ocp_engineer"
	,"rhsusf_army_ocp_engineer"
	,"rhsusf_army_ocp_medic"
	,"rhsusf_army_ocp_medic"
	,"rhsusf_army_ocp_rifleman"
	,"rhsusf_army_ocp_riflemanl"
	,"rhsusf_army_ocp_grenadier"
	,"rhsusf_army_ocp_machinegunner"
	,"rhsusf_army_ocp_machinegunnera"
	,"rhsusf_army_ocp_riflemanat"
	,"rhsusf_army_ocp_explosives"
	,"rhsusf_army_ocp_marksman"
	,"rhsusf_army_ocp_aa"
	,"rhsusf_army_ocp_javelin"
	,"rhsusf_army_ocp_autorifleman"
	,"rhsusf_army_ocp_autoriflemana"
	,"rhsusf_army_ocp_rifleman_m4"
	,"rhsusf_army_ocp_rifleman_m16"
	,"rhsusf_army_ocp_rifleman_m590"
	,"rhsusf_army_ocp_javelin_assistant"
	,"rhsusf_army_ocp_maaws"
	,"rhsusf_army_ocp_fso"
	,"rhsusf_army_ocp_jfo"
	,"rhsusf_army_ocp_sniper"
	,"rhsusf_army_ocp_sniper_m107"
	,"rhsusf_army_ocp_sniper_m24sws"
	,"rhsusf_army_ocp_uav"];
a3e_arr_Escape_InfantryTypes_Ind = [
	"rhssaf_army_m93_oakleaf_summer_asst_mgun"
	,"rhssaf_army_m93_oakleaf_summer_asst_spec_aa"
	,"rhssaf_army_m93_oakleaf_summer_asst_spec_at"
	,"rhssaf_army_m93_oakleaf_summer_crew"
	,"rhssaf_army_m93_oakleaf_summer_engineer"
	,"rhssaf_army_m93_oakleaf_summer_exp"
	,"rhssaf_army_m93_oakleaf_summer_medic"
	,"rhssaf_army_m93_oakleaf_summer_medic"
	,"rhssaf_army_m93_oakleaf_summer_ft_lead"
	,"rhssaf_army_m93_oakleaf_summer_gl"
	,"rhssaf_army_m93_oakleaf_summer_mgun_m84"
	,"rhssaf_army_m93_oakleaf_summer_sniper_m76"
	,"rhssaf_army_m93_oakleaf_summer_spec_aa"
	,"rhssaf_army_m93_oakleaf_summer_spec_at"
	,"rhssaf_army_m93_oakleaf_summer_officer"
	,"rhssaf_army_m93_oakleaf_summer_repair"
	,"rhssaf_army_m93_oakleaf_summer_rifleman_ammo"
	,"rhssaf_army_m93_oakleaf_summer_rifleman_at"
	,"rhssaf_army_m93_oakleaf_summer_rifleman_m21"
	,"rhssaf_army_m93_oakleaf_summer_rifleman_m70"
	,"rhssaf_army_m93_oakleaf_summer_spotter"
	,"rhssaf_army_m93_oakleaf_summer_sq_lead"];
a3e_arr_recon_InfantryTypes = [
	"rhsusf_socom_marsoc_teamleader"
	,"rhsusf_socom_marsoc_teamchief"
	,"rhsusf_socom_marsoc_elementleader"
	,"rhsusf_socom_marsoc_cso_mechanic"
	,"rhsusf_socom_marsoc_sniper"
	,"rhsusf_socom_marsoc_cso_cqb"
	,"rhsusf_socom_marsoc_cso_breacher"
	,"rhsusf_socom_marsoc_cso_light"
	,"rhsusf_socom_marsoc_cso"
	,"rhsusf_socom_marsoc_sarc"
	,"rhsusf_socom_marsoc_cso_eod"
	,"rhsusf_socom_marsoc_cso_grenadier"
	,"rhsusf_socom_marsoc_jfo"
	,"rhsusf_socom_marsoc_jtac"
	,"rhsusf_socom_marsoc_spotter"
	,"rhsusf_socom_marsoc_sniper_m107"];
a3e_arr_recon_I_InfantryTypes = [
	"rhssaf_army_m10_para_asst_mgun_m84"
	,"rhssaf_army_m10_para_asst_mgun_minimi"
	,"rhssaf_army_m10_para_asst_spec_aa"
	,"rhssaf_army_m10_para_asst_spec_at"
	,"rhssaf_army_m10_para_exp"
	,"rhssaf_army_m10_para_engineer"
	,"rhssaf_army_m10_para_medic"
	,"rhssaf_army_m10_para_medic"
	,"rhssaf_army_m10_para_ft_lead"
	,"rhssaf_army_m10_para_gl_ag36"
	,"rhssaf_army_m10_para_gl_m320"
	,"rhssaf_army_m10_para_mgun_m84"
	,"rhssaf_army_m10_para_mgun_minimi"
	,"rhssaf_army_m10_para_sniper_m76"
	,"rhssaf_army_m10_para_spec_aa"
	,"rhssaf_army_m10_para_spec_at"
	,"rhssaf_army_m10_para_officer"
	,"rhssaf_army_m10_para_repair"
	,"rhssaf_army_m10_para_rifleman_ammo"
	,"rhssaf_army_m10_para_rifleman_at"
	,"rhssaf_army_m10_para_rifleman_hk416"
	,"rhssaf_army_m10_para_rifleman_g36"
	,"rhssaf_army_m10_para_rifleman_m21"
	,"rhssaf_army_m10_para_sniper_m82a1"
	,"rhssaf_army_m10_para_spotter"
	,"rhssaf_army_m10_para_sq_lead"];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = [
	"rhsusf_m1025_w_s_m2"
	,"rhsusf_m1025_w_s_Mk19"
	,"rhsusf_m1043_w_s_m2"
	,"rhsusf_m1043_w_s_mk19"
	,"rhsusf_CGRCAT1A2_M2_usmc_wd"
	,"rhsusf_M1232_MC_M2_usmc_wd"
	,"RHS_M2StaticMG_USMC_WD"
	,"RHS_M2StaticMG_MiniTripod_USMC_WD"
	,"RHS_TOW_TriPod_USMC_WD"
	,"RHS_MK19_TriPod_USMC_WD"];
a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind = [
	"rhssaf_m1025_olive_m2"
	,"rhssaf_m1025_olive_m2"
	,"rhssaf_m1025_olive_m2"
	,"rhssaf_army_ags30_tripod"
	,"rhssaf_army_nsv_tripod"
	,"rhssaf_army_m2staticmg_minitripod"
	,"rhssaf_army_metis_9k115"];

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses = [
	"rhsusf_m998_w_s_2dr_halftop"
	,"rhsusf_M1220_M153_M2_usarmy_wd"
	,"rhsusf_M1117_W"
	,"rhsusf_M1078A1P2_WD_fmtv_usarmy"
	,"rhsusf_M1078A1P2_B_WD_fmtv_usarmy"
	,"rhsusf_M1083A1P2_WD_fmtv_usarmy"
	,"rhsusf_M1083A1P2_B_WD_fmtv_usarmy"
	,"rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy"
	,"rhsusf_CGRCAT1A2_M2_usmc_wd"];
a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = [
	"rhssaf_m1025_olive_m2"
	,"rhssaf_m998_olive_2dr_fulltop"
	,"rhssaf_m998_olive_2dr_halftop"
	,"rhssaf_army_ural"
	,"rhssaf_army_ural_open"];


// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses = [
	"rhsusf_mrzr4_w_mud"//SOCOM
	,"rhsusf_m1025_w_s"
	,"rhsusf_m1025_w_s_m2"
	,"rhsusf_m1025_w_s_Mk19"
	,"rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy"
	,"rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy"
	,"rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy"
	,"rhsusf_M1232_MC_M2_usmc_wd"
	,"rhsusf_m113_usarmy_M240"
	,"rhsusf_CGRCAT1A2_M2_usmc_wd"
	,"RHS_M2A2_wd"];



// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses = [
	"rhsusf_m113_usarmy"
	,"RHS_M6_wd"
	,"RHS_M6_wd"
	,"RHS_M2A2_wd"
	,"RHS_M2A2_BUSKI_WD"
	,"RHS_M2A3_wd"
	,"RHS_M2A3_BUSKI_wd"
	,"rhsusf_m1025_w_m2"
	,"rhsusf_m1025_w_mk19"
	,"rhsusf_CGRCAT1A2_M2_usmc_wd"];
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses = [
	"rhsusf_m1a1aimwd_usarmy"
	,"rhsusf_m1a1aim_tuski_wd"
	,"rhsusf_m1a2sep1wd_usarmy"
	,"rhsusf_m1a2sep1tuskiwd_usarmy"
	,"rhsusf_m1a2sep1tuskiiwd_usarmy"];

// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
a3e_arr_ComCenStaticWeapons = [
	"RHS_M2StaticMG_D"];
// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = [
	"I_G_Offroad_01_repair_F"
	,"rhsusf_m113_usarmy"
	,"rhsusf_CGRCAT1A2_usmc_wd"
	,"rhsusf_M1078A1P2_wd_fmtv_usarmy"
	,"rhsusf_M1078A1P2_wd_open_fmtv_usarmy"
	,"rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy"
	,"rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy"
	,"rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy"
	,"rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy"
	,"rhsusf_m1025_w"
	,"rhsusf_m1025_w_m2"
	,"rhsusf_m1025_w_mk19"
	,"rhsusf_m113_usarmy_medical"
	,"rhsusf_M978A4_usarmy_wd"
	,"rhsusf_M977A4_AMMO_usarmy_wd"
	,"rhsusf_M977A4_REPAIR_usarmy_wd"
	,"rhsusf_m998_w_s_2dr"
	,"I_G_Offroad_01_armed_F
	","I_G_Offroad_01_armed_F"];

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
a3e_arr_Escape_EnemyCivilianCarTypes = [
	"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_Offroad_01_F"
	,"C_Quadbike_01_F"
	,"C_SUV_01_F"
	,"C_Van_01_box_F"
	,"C_Van_01_transport_F"
	,"C_Van_01_fuel_F"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_box_F"
	,"C_Truck_02_transport_F"
	,"C_Truck_02_covered_F"];
	if(Param_UseDLCApex==1) then {
		a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_02_unarmed_F";
	};
	if(Param_UseDLCLaws==1) then {
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_medevac_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_vehicle_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_service_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_transport_F";
	};

// Vehicles, weapons and ammo at ammo depots

// Random array. An ammo depot contains one static weapon of the followin types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses = [
	"RHS_M2StaticMG_D"
	,"RHS_M2StaticMG_MiniTripod_D"
	,"RHS_MK19_TriPod_D"
	,"RHS_TOW_TriPod_D"
	,"RHS_Stinger_AA_pod_D"];
// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = a3e_arr_ComCenParkedVehicles;

//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli = [
	"RHS_AH64D_wd"
	,"RHS_AH64D_wd_GS"
	,"RHS_AH64D_wd_CS"
	,"RHS_AH64D_wd_AA"
	,"RHS_AH1Z_wd"
	,"RHS_AH1Z_wd_GS"
	,"RHS_AH1Z_wd_CS"
	,"RHS_MELB_AH6M"];
a3e_arr_O_transport_heli = [
	"RHS_CH_47F"
	,"rhsusf_CH53E_USMC"
	,"RHS_MELB_MH6M"
	,"RHS_UH60M"
	,"RHS_UH60M2"
	,"RHS_UH60M_ESSS"
	,"RHS_UH60M_ESSS2"
	,"RHS_UH1Y_UNARMED"];
a3e_arr_O_pilots = [
	"rhsusf_army_ocp_helipilot"];
a3e_arr_I_transport_heli = [
	"rhssaf_airforce_ht48"];
a3e_arr_I_pilots = [
	"rhssaf_airforce_pilot_transport_heli"];


// The following arrays define weapons and ammo contained at the ammo depots
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.

// Weapons and ammo in the basic weapons box
a3e_arr_AmmoDepotBasicWeapons = [];
// CSAT weapons (reemplazadas por NIArms si es posible)
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_pistol_M1911A1", 50, 2, 5, ["hlc_7Rnd_45ACP_B_1911"], 6]; // reemplazo de M1911
a3e_arr_AmmoDepotBasicWeapons pushback ["rhsusf_weap_MP7A2", 50, 1, 2, ["rhsusf_mag_40Rnd_46x30_FMJ"], 6]; // NO hay equivalente NIArms
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_m4m203", 100, 3, 5, ["hlc_30rnd_556x45_EPR","1Rnd_HE_Grenade_shell"], 6]; // M4A1 M203
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_M4", 50, 2, 4, ["hlc_30rnd_556x45_EPR","hlc_30rnd_556x45_EPR_Tracer_Red"], 4]; // M4A1 Block II
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_m4m203", 75, 2, 4, ["hlc_30rnd_556x45_EPR","hlc_30rnd_556x45_EPR_Tracer_Red","1Rnd_HE_Grenade_shell"], 4]; // M4A1 M203 repite por cantidad
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_lmg_m60", 20, 2, 2, ["hlc_100Rnd_762x51_T_M60E4"], 20]; // reemplazo de M240B
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_FN3011Modern", 10, 1, 2, ["hlc_5rnd_3006_190grBTSP"], 6]; // reemplazo de XM2010
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_FN3011", 10, 1, 2, ["hlc_5rnd_3006_190grSP"], 6]; // segunda variante de XM2010

// non-CSAT weapons (reemplazadas con equivalentes de NIArms si es posible)
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_lmg_minimipara", 50, 2, 4, ["hlc_200rnd_556x45_M_SAW"], 4]; // reemplazo M249
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_M16A4", 50, 1, 3, ["hlc_30rnd_556x45_EPR"], 6]; // reemplazo M16A4
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_m16a4gl", 50, 1, 3, ["hlc_30rnd_556x45_EPR","1Rnd_HE_Grenade_shell"], 4]; // M16A4 con lanzagranadas
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_g36c", 30, 1, 2, ["hlc_30rnd_556x45_EPR_G36"], 8]; // reemplazo G36C
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_M14EBR", 10, 1, 2, ["hlc_20Rnd_762x51_B_M14"], 6]; // reemplazo EBR
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_G36KA1", 50, 1, 2, ["hlc_30rnd_556x45_EPR_G36"], 4]; // reemplazo G36KV
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_hk33a2ris", 10, 1, 2, ["hlc_30rnd_556x45_EPR"], 4]; // reemplazo HK416D10
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_M4", 10, 1, 2, ["hlc_30rnd_556x45_EPR"], 4]; // reemplazo M4 con grip
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_CQBR", 10, 1, 2, ["hlc_30rnd_556x45_EPR"], 4]; // reemplazo MK18
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_smg_mp5a3", 40, 1, 2, ["hlc_30Rnd_9x19_B_MP5"], 6]; // reemplazo Scorpion
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_samr2", 40, 1, 2, ["hlc_30rnd_556x45_SOST"], 8]; // reemplazo M21A
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_rifle_akm", 40, 1, 2, ["hlc_30Rnd_762x39_b_ak"], 8]; // reemplazo M70AB2
a3e_arr_AmmoDepotBasicWeapons pushback ["hlc_shotgun_rem870", 10, 1, 2, ["hlc_8rnd_12g_buck","hlc_8rnd_12g_slug"], 10]; // reemplazo M590



// Weapons and ammo in the special weapons box
a3e_arr_AmmoDepotSpecialWeapons = [];
// CSAT weapons (equivalentes de precisión y soporte)
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_M14DMR", 20, 2, 4, ["hlc_20Rnd_762x51_B_M14"], 9]; // reemplazo SR25
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_FN3011Modern", 30, 2, 4, ["hlc_5rnd_3006_190grSP"], 10]; // reemplazo M40A5
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_hk33a2", 10, 1, 2, ["hlc_30rnd_556x45_EPR"], 4]; // reemplazo HK416
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_SAMR", 30, 1, 2, ["hlc_30rnd_556x45_SOST"], 4]; // reemplazo M27 IAR
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_fn3011", 30, 2, 4, ["hlc_5rnd_3006_190grSP"], 9]; // reemplazo XM2010
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_lmg_m60", 50, 2, 3, ["hlc_100Rnd_762x51_T_M60E4"], 20]; // M60 incluida como reemplazo del M240B

// non-CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["rhs_weap_m32_usmc", 10, 2, 4, ["rhsusf_mag_6Rnd_M433_HEDP","rhsusf_mag_6Rnd_M576_Buckshot","rhsusf_mag_6Rnd_M713_red"], 5]; // no reemplazo disponible
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_lmg_minimipara", 30, 1, 2, ["hlc_200rnd_556x45_M_SAW"], 4]; // reemplazo M249
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_RPK12", 50, 1, 2, ["hlc_75Rnd_762x39_m_rpk"], 4]; // reemplazo PKM (M84)
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_akm", 35, 1, 2, ["hlc_30Rnd_762x39_b_ak"], 4]; // reemplazo M70b1n
a3e_arr_AmmoDepotSpecialWeapons pushback ["hlc_rifle_akmgl", 35, 1, 2, ["hlc_30Rnd_762x39_b_ak"], 4]; // reemplazo M70b3n
a3e_arr_AmmoDepotSpecialWeapons pushback ["rhs_weap_m82a1", 10, 1, 2, ["rhsusf_mag_10Rnd_STD_50BMG_M33","rhsusf_mag_10Rnd_STD_50BMG_mk211"], 4]; // sin reemplazo real en NIArms


// Weapons and ammo in the launchers box
a3e_arr_AmmoDepotLaunchers = [];
// CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_m72a7", 10, 1, 2, ["rhs_m72a7_mag"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_M136_hedp", 10, 1, 3, ["rhs_m136_hedp_mag"], 3];
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_maaws", 10, 1, 2, ["rhs_mag_maaws_HEAT","rhs_mag_maaws_HEDP","rhs_mag_maaws_HE"], 2];
// non-CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_fgm148", 30, 1, 2, ["rhs_fgm148_magazine_AT"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_smaw_green", 30, 1, 2, ["rhs_mag_smaw_HEAA","rhs_mag_smaw_HEDP"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_M136", 50, 1, 3, ["rhs_m136_mag"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_M136_hedp", 50, 1, 3, ["rhs_m136_hedp_mag"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_M136_hp", 50, 1, 3, ["rhs_m136_hp_mag"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["rhs_weap_fim92", 50, 1, 2, ["rhs_fim92_mag"], 3];

// Weapons and ammo in the ordnance box
a3e_arr_AmmoDepotOrdnance = [];
// General weapons
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["Laserbatteries"], 5];

// Weapons and ammo in the vehicle box (the big one)
// Some high volumes (mostly for immersion)
a3e_arr_AmmoDepotVehicle = [];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["HandGrenade", "MiniGrenade"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SmokeShell", "SmokeShellYellow", "SmokeShellRed", "SmokeShellGreen", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["rhs_mag_M433_HEDP", "rhs_mag_M714_white", "rhs_mag_M716_yellow", "rhs_mag_M713_red", "rhs_mag_M585_white", "rhs_mag_M661_green"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["rhs_VOG25"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["FlareWhite_F", "FlareGreen_F", "FlareRed_F", "FlareYellow_F"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["UGL_FlareWhite_F", "UGL_FlareGreen_F", "UGL_FlareRed_F", "UGL_FlareYellow_F", "UGL_FlareCIR_F"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["rhs_mag_zarya2"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["1Rnd_HE_Grenade_shell", "3Rnd_HE_Grenade_shell"], 25];
a3e_arr_AmmoDepotVehicleItems = [];
a3e_arr_AmmoDepotVehicleItems pushback ["ToolKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["Medikit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["FirstAidKit", 100, 10, 50, [], 0];
a3e_arr_AmmoDepotVehicleBackpacks = ["B_rhsusf_B_BACKPACK"];

// Items

// Index 0: Item classname.
// Index 1: Item's probability of presence (in percent, 0-100)..
// Index 2: Minimum amount.
// Index 3: Maximum amount.
a3e_arr_AmmoDepotItems = [];
a3e_arr_AmmoDepotItems pushback ["Laserdesignator", 10, 1, 2];
if(Param_NoNightvision==0) then {
	a3e_arr_AmmoDepotItems pushback ["NVGoggles", 10, 1, 3];
};
a3e_arr_AmmoDepotItems pushback ["Rangefinder", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["lerca_1200_black", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["Leupold_Mk4", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["Binocular", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["ItemCompass", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemGPS", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemRadio", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["ItemWatch", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_anpeq15_light", 50, 1, 5];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_anpeq15side_bk", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_pbs1", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_tgpa", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_tgpv", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_muzzleFlash_dtk", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_mrds", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_nt4_black", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_LEUPOLDMK4_2", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_1p63", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_pkas", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_ekp1", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ACOG_USMC", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ACOG2_USMC", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ACOG3", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_pso1m2", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_acc_1p29", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_wmx_bk", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_eotech_xps3", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_SF3P556", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_SFMB556", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_rotex5_grey", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_HAMR", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_LEUPOLDMK4", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ELCAN", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ACOG", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ACOG2", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_M2010S", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_SR25S", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_compm4", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_eotech_552", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_eotech_552_wd", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ACOG3", 10, 1, 3];
if(Param_NoNightvision==0) then {
	a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_anpas13gv1", 10, 1, 3];
	a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_anpvs27", 10, 1, 3];
	a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_ACOG_anpvs27", 10, 1, 3];
	a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_premier_anpvs27", 10, 1, 3];
};
a3e_arr_AmmoDepotItems pushback ["O_UavTerminal", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_weap_optic_smaw", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhs_optic_maaws", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_grip1", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_grip2", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_grip2_wd", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_grip3", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_rvg_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_tacsac_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_tacsac_blue", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_tdstubby_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhsusf_acc_harris_bipod", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["rhs_bipod", 10, 1, 2];


// Weapons that may show up in civilian cars

a3e_arr_CivilianCarWeapons = [];
a3e_arr_CivilianCarWeapons pushback ["hlc_pistol_P226R_357Combat", "hlc_12Rnd_357SIG_B_P226", 5]; // reemplazo Makarov
a3e_arr_CivilianCarWeapons pushback ["hlc_smg_mp5k_PDW", "hlc_30Rnd_9x19_B_MP5", 5]; // reemplazo M3A1
a3e_arr_CivilianCarWeapons pushback ["hlc_shotgun_rem870", "hlc_8rnd_12g_buck", 11]; // reemplazo M590_5RD
a3e_arr_CivilianCarWeapons pushback ["hlc_shotgun_rem870", "hlc_8rnd_12g_slug", 9]; // reemplazo M590_8RD
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_CQBR", "hlc_30rnd_556x45_EPR", 9]; // reemplazo MK18
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_M4", "hlc_30rnd_556x45_EPR", 8]; // reemplazo M4A1 Block II
a3e_arr_CivilianCarWeapons pushback ["rhs_weap_M320", "rhs_mag_M433_HEDP", 10]; // sin reemplazo
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_STG58F", "hlc_20Rnd_762x51_B_fal", 7]; // reemplazo MP44
a3e_arr_CivilianCarWeapons pushback ["hlc_lmg_m60", "hlc_100Rnd_762x51_T", 20]; // reemplazo M240B
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_M16A4", "hlc_30rnd_556x45_EPR", 8]; // reemplazo M16A4
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_fn3011", "hlc_5rnd_3006_190grSP", 10]; // reemplazo XM2010
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_M14DMR", "hlc_20Rnd_762x51_B_M14", 12]; // reemplazo SR25
a3e_arr_CivilianCarWeapons pushback ["rhs_weap_rshg2","rhs_rshg2_mag", 2]; // sin reemplazo
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_M1903A1", "hlc_5Rnd_762x63_M1T", 12]; // reemplazo Kar98k
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_M1Garand", "hlc_8Rnd_762x63_M2B_M1rifle", 12]; // mismo
a3e_arr_CivilianCarWeapons pushback ["hlc_rifle_M1903A1", "hlc_5Rnd_762x63_M1T", 12]; // reemplazo Mosin (lo más cercano)
a3e_arr_CivilianCarWeapons pushback ["hlc_shotgun_M1014", "hlc_8Rnd_12Gauge_Slug", 12]; // reemplazo Izh18
a3e_arr_CivilianCarWeapons pushback ["hlc_shotgun_M1014", "hlc_8rnd_12g_buck", 12]; // reemplazo Izh18
a3e_arr_CivilianCarWeapons pushback ["rhs_weap_panzerfaust60", objNull, 0]; // sin reemplazo
a3e_arr_CivilianCarWeapons pushback ["MineDetector", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["Binocular", objNull, 0];
a3e_arr_CivilianCarWeapons pushback [objNull, "SatchelCharge_Remote_Mag", 2];
a3e_arr_CivilianCarWeapons pushback [objNull, "HandGrenade", 5];
a3e_arr_CivilianCarWeapons pushback [objNull, "SmokeShell", 5];



// Here is a list of scopes:
a3e_arr_Scopes = [
	"rhsusf_acc_compm4"
	,"rhsusf_acc_eotech_552"
	,"rhsusf_acc_LEUPOLDMK4"
	,"rhsusf_acc_ACOG"
	,"rhsusf_acc_ACOG2"
	,"rhsusf_acc_ACOG3"
	,"rhsusf_acc_T1_high"
	,"rhsusf_acc_g33_T1"
	,"rhsusf_acc_T1_low"
	,"rhsusf_acc_LEUPOLDMK4_2"
	,"rhsusf_acc_eotech_xps3"
	,"rhsusf_acc_eotech_xps3"
	,"rhsusf_acc_eotech_552"
	,"rhsusf_acc_RM05"
	,"rhsusf_acc_eotech_xps3"
	,"rhsusf_acc_eotech_552_wd"
	,"rhsusf_acc_compm4"
	,"rhsusf_acc_eotech_xps3"
	,"rhsusf_acc_eotech_552_wd"
	,"rhsusf_acc_compm4"];
a3e_arr_Scopes_SMG = [
	"rhsusf_acc_eotech_xps3"
	,"rhsusf_acc_eotech_552"
	,"rhsusf_acc_eotech_552_wd"
	,"rhs_m4_compm4"
	,"rhsusf_acc_RM05"];
a3e_arr_Scopes_Sniper = [
	"rhsusf_acc_LEUPOLDMK4"
	,"rhsusf_acc_LEUPOLDMK4_2"];
a3e_arr_NightScopes = [
	"rhsusf_acc_anpvs27"
	,"rhsusf_acc_ACOG_anpvs27"
	,"rhsusf_acc_premier_anpvs27"];
a3e_arr_TWSScopes = [
	"rhsusf_acc_anpas13gv1"];

// Here is a list of bipods, might get randomly added to enemy patrols:
a3e_arr_Bipods = [
	"rhs_bipod"
	,"rhsusf_acc_harris_bipod"
	,"rhsusf_acc_harris_bipod"
	,"rhsusf_acc_harris_bipod"
	,"rhsusf_acc_grip1"
	,"rhsusf_acc_grip2"
	,"rhsusf_acc_grip2_wd"
	,"rhsusf_acc_grip3"
	,"rhsusf_acc_rvg_blk"
	,"rhsusf_acc_tdstubby_blk"
	,"rhsusf_acc_tacsac_blk"];


//////////////////////////////////////////////////////////////////
// RunExtraction.sqf
// Helicopters that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_chopper = [
	"rhs_ka60_c"
	,"RHS_Mi8mt_vvs"];
a3e_arr_extraction_chopper_escort = [
	"RHS_Ka52_vvs"
	,"rhs_mi28n_vvs"
	,"RHS_Mi24P_vvs"
	,"RHS_Mi24V_vvs"];

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone = [
	"B_UAV_02_F"
	,"B_UAV_02_CAS_F"];

//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on stadard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy = [
	"RHS_MELB_MH6M"
	,"RHS_UH1Y_UNARMED"
	,"RHS_UH60M2"
	,"RHS_UH60M_ESSS"];
a3e_arr_searchChopperHard = [
	"RHS_UH1Y"
	,"RHS_UH1Y_FFAR"
	,"RHS_MELB_AH6M"
	,"RHS_UH60M"];
a3e_arr_searchChopper_pilot = [
	"rhsusf_usmc_marpat_wd_helipilot"];
a3e_arr_searchChopper_crew = [
	"rhsusf_usmc_marpat_wd_helicrew"];

if(Param_SearchChopper==0) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy + a3e_arr_searchChopperHard;
};
if(Param_SearchChopper==1) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy;
};
if(Param_SearchChopper==2) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperHard;
};

//////////////////////////////////////////////////////////////////
// fn_AmbientInfantry
// only INS is used
//is this even used?
//////////////////////////////////////////////////////////////////
a3e_arr_AmbientInfantry_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_AmbientInfantry_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_InitGuardedLocations
// Units spawned to guard ammo camps and com centers
// Only INS used
//////////////////////////////////////////////////////////////////
a3e_arr_InitGuardedLocations_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_InitGuardedLocations_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_roadblocks
// units spawned on roadblocks
// Only INS used
// vehicle arrays not used, uses a3e_arr_Escape_RoadBlock_MannedVehicleTypes and a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind instead
//////////////////////////////////////////////////////////////////
a3e_arr_roadblocks_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_roadblocks_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

a3e_arr_roadblocks_Veh_INS = a3e_arr_Escape_RoadBlock_MannedVehicleTypes;
a3e_arr_roadblocks_Veh_GUE = a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_PopulateAquaticPatrol
// boats that are spawned
//////////////////////////////////////////////////////////////////
a3e_arr_AquaticPatrols = [
	"rhsusf_mkvsoc"];

//////////////////////////////////////////////////////////////////
// fn_AmmoDepot
// What kind of weapon boxes are spawned when the parameter "additional weapons" is activated
// use to add boxes from mods to the ammo depots
//////////////////////////////////////////////////////////////////
a3e_additional_weapon_box_1 = "rhsusf_weapon_crate";
a3e_additional_weapon_box_2 = "rhsusf_mags_crate";

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite = [
	"RHS_M252_D"
	,"rhssaf_army_m252"];

//////////////////////////////////////////////////////////////////
// fn_CallCAS.sqf
// Classnames of planes for the CAS module
//////////////////////////////////////////////////////////////////
a3e_arr_CASplane = [
	"RHS_A10"
	,"RHS_A10"
	,"rhsusf_f22"
	,"rhssaf_airforce_l_18"];

//////////////////////////////////////////////////////////////////
// fn_CrashSite
// Random crashsite of west heli with west weapons
//////////////////////////////////////////////////////////////////
// The following arrays define weapons and ammo contained at crash sites
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.
a3e_arr_CrashSiteWrecks = [
	"Land_Wreck_Heli_Attack_02_F"
	,"Land_rhs_mi28_wreck"
	,"Land_rhs_mi28_wreck2"
	,"Land_rhs_tu95_wreck"
	,"Mi8Wreck"];
a3e_arr_CrashSiteCrew = [
	"rhs_pilot_combat_heli"];
a3e_arr_CrashSiteWrecksCar = [
	"Land_Wreck_BMP2_F"
	,"Land_Wreck_BRDM2_F"
	,"Land_Wreck_T72_hull_F"];
a3e_arr_CrashSiteCrewCar = [
	"rhs_vdv_flora_crew"
	,"rhs_vdv_flora_armoredcrew"
	,"rhs_vdv_flora_combatcrew"];
// Weapons and ammo in crash site box
a3e_arr_CrashSiteWeapons = [];
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_ak74", 50, 2, 5, ["hlc_30Rnd_545x39_B_AK", "hlc_30Rnd_545x39_T_AK"], 4]; // AK74M GP25
a3e_arr_CrashSiteWeapons pushback ["rhs_weap_rpg26", 10, 1, 2, ["rhs_rpg26_mag"], 1]; // Se conserva el RPG26 original
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_akm", 100, 3, 5, ["hlc_30Rnd_762x39_b_ak", "hlc_30Rnd_762x39_t_ak"], 4]; // AK74
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_RPK12", 10, 1, 2, ["hlc_75Rnd_762x39_m_rpk"], 3]; // PKM
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_aks74", 75, 2, 4, ["hlc_30Rnd_545x39_B_AK", "hlc_45Rnd_545x39_t_rpk"], 4]; // AKMS
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_psg1", 20, 1, 2, ["hlc_20rnd_762x51_b_G3"], 8]; // SVDS
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_auga2carb", 20, 1, 2, ["hlc_30rnd_556x45_EPR"], 12]; // AS VAL
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_M14", 10, 1, 2, ["hlc_20Rnd_762x51_B_M14"], 8]; // SVD PSO1
a3e_arr_CrashSiteWeapons pushback ["hlc_rifle_RPK12", 10, 1, 2, ["hlc_75Rnd_762x39_m_rpk"], 6]; // PKP

// Attachments and other items in crash site box
a3e_arr_CrashSiteItems = [];
a3e_arr_CrashSiteItems pushback ["rhs_acc_ekp1", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_ekp8_02", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_npz", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_pkas", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_pso1m2", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_1p78", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_1p63", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_nita", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_2dpZenit", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_perst1ik", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["hlc_muzzle_545SUP_AK", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_pbs1", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["rhs_acc_tgpv", 10, 1, 3];