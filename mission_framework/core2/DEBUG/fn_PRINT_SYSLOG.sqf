/*
 * Function: core2_fnc_PRINT_SYSLOG
 * Author: 7th Cav Dev Team, Sparrow
 * 
 * Description:
 * Prints debug messages to the system chat and the RPT log based on the specified severity level. Only messages with a severity code less than or equal to the configured severity level will be printed.
 *
 * Arguments:
 * 1. _Message (String): The message to be printed.
 * 2. _SeverityCode (Number): The severity code of the message. Messages with severity codes greater than the configured severity level will not be printed.
 *
 * Return Value:
 * None.
 *
 * Example:
 * ["Landing zone secured", 2] call core2_fnc_PRINT_SYSLOG;
 *
 * Public:
 * No.
 */
params ["_Message", "_SeverityCode"];

// Define the severity level
private _SeverityLevel = 3;  // Set this to your desired severity level

//If the Severity Code of the message is less than or equal to the Severity 
//Level it will print out and document that in the system chat and the rpt log  
if (_SeverityCode <= _SeverityLevel) then {
    systemChat _Message;
    diag_log _Message;
} else {};

