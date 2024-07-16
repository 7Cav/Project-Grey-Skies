/*
 * Author: CW3.Sparrow.P
 * Gets each of the compositions and stores them in global variables
 * Switch out the function calls here to be Desert, Woodland, or Snow based on the map
 * Arguments:
 * N/A
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call core2_fnc_GET_COMPS
 *
 * Public: No
 */
params [];
["GET_COMPS Start",1] call core2_fnc_PRINT_SYSLOG;
GS_HQ_OBJS=call core2_fnc_WOODLAND_HQ;
GS_RADIO_OBJS=call core2_fnc_WOODLAND_RADIO;
GS_MORTAR_OBJS=call core2_fnc_WOODLAND_MORTAR;

["GET_COMPS End",1] call core2_fnc_PRINT_SYSLOG;