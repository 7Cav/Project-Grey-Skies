class core2
{
	class INIT
	{
		file = "core2"
		class init_core2 {};
		class init_preset {};
	}
	class AO
	{
		file = "core2\AO";
		class AO_LOC_GET {};
	};
	class DEBUG
	{
		file = "core2\DEBUG";
		class PRINT_SYSLOG {};
	};
	class MANAGERS
	{
		file = "core2\MANAGERS";
		class GET_COMPS {};
		class DRAW_AO {};
	};
	class OBJ
	{
		file = "core2\OBJ";
		class OBJ_TASK_LOC_SEL {};
		class OBJ_TASK_MANGER {};
		class OBJ_TASK_SEL {};
	};
	class OBJ_LOGIC_FILES
	{
		file = "core2\OBJ\OBJ_LOGIC_FILES";
		class OBJ_CAPTURE_HQ_LOGIC {};
		class OBJ_DESTROY_MORTARS_LOGIC {};
		class OBJ_DESTROY_RADIO_LOGIC {};
	};
	class MISSION_BUILDING_BLOCKS
	{
		file = "core2\OBJ\MISSION_BUILDING_BLOCKS";
		class CAPTURE_FLAG {};
		class KILL_GROUP {};
		class DESTROY_OBJECT {};
	};
	class OPFOR
	{
		file = "core2\OPFOR\SPAWNERS";
		class SINGLE_UNIT_SPAWN {};
	};
	class STRUCTURES
	{
		file = "core2\STRUCTURES";
		class STRUCTURE_TRANSLATOR {};
		class STRUCTURE_BUILDER {};
		
	};
	class WOODLAND 
	{
		file = "core2\STRUCTURES\WOODLAND";
		class WOODLAND_HQ {};
		class WOODLAND_MORTAR {};
		class WOODLAND_RADIO {};
	};
};
