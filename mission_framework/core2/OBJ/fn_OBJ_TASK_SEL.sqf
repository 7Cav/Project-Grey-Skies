/*
 * Author: CW3.Sparrow.P
 * Determines the number and types of objectives for the AO
 *
 * Arguments:
 * 0: AOInfo - Location of the AO
 * 1: NumOfTasks - Number of tasks to add
 * Return Value:
 * Nothing
 *
 * Example:
 * [_AOInfo, _NumOfTasks] call core2_fnc_OBJ_TASK_SEL
 *
 * Public: No
 * To Do:
 * Revaluate how this is done
 */
params ["_AOInfo", ["_NumOfTasks",0]];
["OBJ_TASK_SEL Start",1] call core2_fnc_PRINT_SYSLOG;
_TaskIDs=['OBJ_CAPTURE_HQ','OBJ_DESTORY_RADIO'];
//_RandomNumber = random 100;

//The Max Number is determined by the number of times in the TaskList
_TaskList = ['OBJ_DESTROY_MORTARS']
/* Task ID list
'OBJ_DESTROY_SAM'
'OBJ_DESTROY_ARTILLERY'
'OBJ_DESTROY_MORTARS'
'OBJ_DESTROY_OBS_POST'
'OBJ_DESTROY_VEC_DEPOT'
'OBJ_DESTROY_FARP'
'OBJ_DESTROY_SUPPLY_DEPOT'
'OBJ_DESTROY_CONVOY'
'OBJ_DESTROY_PATROL_BASE'
'OBJ_COLLECT_INTEL'
'OBJ_KILL_OFF'
'OBJ_RESCUE_POW'
'OBJ_CSAR'
'OBJ_CAPTURE_AIRFIELD'
'OBJ_CAPTURE_CHECKPOINT'
'OBJ_DESTROY_LRP'
*/
//Place into a the TaskIDs then pop it out of the Task list, the Max Number is determined by the number of times in the TaskList

for _i from 0 to _NumOfTasks do {
	_RandomNum=0;
	_TotalNumberofTasks = count _TaskList;
	_RandomNum = floor random _TotalNumberofTasks;
	_TaskID = _TaskList select _RandomNum;
	_TaskIDs pushBack _TaskID;
	_TaskList deleteAt _RandomNum;
};
/* Need to rework this next session.
Idea: Rework to just add stuff to the TaskID array first then clean it up after based on the metrics above
*/
/*for _i from 0 to _NumOfTasks do {
	_randomNum = floor random 14;
	[format["Random Number for Task Select : %1",_randomNum],3] call core2_fnc_PRINT_SYSLOG;
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
			_TaskIDs pushBack 'OBJ_RESCUE_POW';};
		case (_randomNum==12 && _NumRescuePilot<_MaxNumRescuePilot):{
			_NumRescuePilot=_NumRescuePilot+1;
			_TaskIDs pushBack 'OBJ_CSAR';};
		case (_randomNum==13 && _NumEnemyAirfield<_MaxNumEnemyAirfield):{
			_NumEnemyAirfield=_NumEnemyAirfield+1;
			_TaskIDs pushBack 'OBJ_CAPTURE_AIRFIELD';};
	};
};*/
[format["Task IDs: %1",_TaskIDs],2] call core2_fnc_PRINT_SYSLOG;
["OBJ_TASK_SEL End",1] call core2_fnc_PRINT_SYSLOG;
[_AOInfo,_TaskIDs] call core2_fnc_OBJ_TASK_LOC_SEL;
