class core2
{
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
	class OPFOR
	{
		file = "core2\OPFOR";
		
	};
	class STRUCTURES
	{
		file = "core2\STRUCTURES";
		class STRUCTURE_TRANSLATOR {};
		//class DESERT{};
		//class SNOW {};
		
	};
	class WOODLAND 
	{
		file = "core2\STRUCTURES\WOODLAND";
		class WOODLAND_HQ {};
		class WOODLAND_MORTAR {};
		class WOODLAND_RADIO {};
	};
};
