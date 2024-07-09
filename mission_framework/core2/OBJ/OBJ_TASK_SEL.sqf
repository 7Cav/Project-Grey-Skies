#include "..\script_component.hpp";
/*
 * Author: CW3.Sparrow.P
 * Determines the number and types of objectives for the AO
 *
 * Arguments:
 * [List of Arguements]
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call rScripts_fnc_tightlz_startaction
 *
 * Public: No
 *
 */
params ["_AOInfo", "_NumOfTasks"];

_TaskIDs=['OBJ_CAPTURE_HQ','OBJ_DESTORY_RADIO'];
//_RandomNumber = random 100;
_MaxNumSAMSite=0;
_MaxNumArtillery=0;
_MaxNumMortars=0;
_MaxNumOBSPost=0;
_MaxNumVECDepot=0;
_MaxNumFARP=0;
_MaxNumSupplyDepot=0;
_MaxNumConvoy=0;
_MaxNumPatrolBase=0;
_MaxNumIntel=0;
_MaxNumOfficer=0;
_MaxNumPOW=0;
_MaxNumRescuePilot=0;
_MaxNumEnemyAirfield=0;

_NumSAMSite=0;
_NumArtillery=0;
_NumMortars=0;
_NumOBSPost=0;
_NumVECDepot=0;
_NumFARP=0;
_NumSupplyDepot=0;
_NumConvoy=0;
_NumPatrolBase=0;
_NumIntel=0;
_NumOfficer=0;
_NumPOW=0;
_NumRescuePilot=0;
_NumEnemyAirfield=0;

for _i from 0 to _NumOfTasks do {
	_randomNum = floor random 14;
	switch (true) do {
		case (_randomNum==0 && _NumSAMSite<_MaxNumSAMSite):{
			_NumSAMSite=_NumSAMSite+1;
			_TaskIDs pushBack 'OBJ_DESTROY_SAM';};
		case (_randomNum==1 && _NumArtillery<_MaxNumArtillery):{
			_NumArtillery=_NumArtillery+1;
			_TaskIDs pushBack 'OBJ_DESTROY_ARTILLERY';};
		case (_randomNum==2 && _NumMortars<_MaxNumMortars):{
			_NumMortars=_NumMortars+1;
			_TaskIDs pushBack 'OBJ_DESTROY_MORTARS';};
		case (_randomNum==3 && _NumOBSPost<_MaxNumOBSPost):{
			_NumOBSPost=_NumOBSPost+1;
			_TaskIDs pushBack 'OBJ_DESTROY_OBS_POST';};
		case (_randomNum==4 && _NumVECDepot<_MaxNumVECDepot):{
			_NumVECDepot=_NumVECDepot+1;
			_TaskIDs pushBack 'OBJ_DESTROY_VEC_DEPOT';};
		case (_randomNum==5 && _NumFARP<_MaxNumFARP):{
			_NumFARP=_NumFARP+1;
			_TaskIDs pushBack 'OBJ_DESTROY_FARP';};
		case (_randomNum==6 && _NumSupplyDepot<_MaxNumSupplyDepot):{
			_NumSupplyDepot=_NumSupplyDepot+1;
			_TaskIDs pushBack 'OBJ_DESTROY_SUPPLY_DEPOT';};
		case (_randomNum==7 && _NumConvoy<_MaxNumConvoy):{
			_NumConvoy=_NumConvoy+1;
			_TaskIDs pushBack 'OBJ_DESTROY_CONVOY';};
		case (_randomNum==8 && _NumPatrolBase<_MaxNumPatrolBase):{
			_NumPatrolBase=_NumPatrolBase+1;
			_TaskIDs pushBack 'OBJ_DESTROY_PATROL_BASE';};
		case (_randomNum==9 && _NumIntel<_MaxNumIntel):{
			_NumIntel=_NumIntel+1;
			_TaskIDs pushBack 'OBJ_COLLECT_INTEL';};
		case (_randomNum==10 && _NumOfficer<_MaxNumOfficer):{
			_NumOfficer=_NumOfficer+1;
			_TaskIDs pushBack 'OBJ_KILL_OFF';};
		case (_randomNum==11 && _NumPOW<_MaxNumPOW):{
			_NumPOW=_NumPOW+1;
			_TaskIDs pushBack 'OBJ_KILL_OFF';};
		case (_randomNum==12 && _NumRescuePilot<_MaxNumRescuePilot):{
			_NumRescuePilot=_NumRescuePilot+1;
			_TaskIDs pushBack 'OBJ_CSAR';};
		case (_randomNum==13 && _NumEnemyAirfield<_MaxNumEnemyAirfield):{
			_NumEnemyAirfield=_NumEnemyAirfield+1;
			_TaskIDs pushBack 'OBJ_CAPTURE_AIRFIELD';};
	};
};

