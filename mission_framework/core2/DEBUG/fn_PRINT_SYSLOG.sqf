/*
 * Author: 7th Cav Dev Team, Sparrow
 * Prints messages out messages from the code based on the debugging level set here
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
params ["_Message", "_SeverityCode"];

// Define the severity level
private _SeverityLevel = 3;  // Set this to your desired severity level

//If the Severity Code of the message is less than or equal to the Severity 
//Level it will print out and document that in the system chat and the rpt log  
if (_SeverityCode <= _SeverityLevel) then {
    systemChat _Message;
    diag_log _Message;
} else {};

