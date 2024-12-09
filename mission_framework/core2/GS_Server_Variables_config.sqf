/*
 * Author: 7th Cav Dev Team, Sparrow
 * [Description of Function]
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

GS_FrameHandlerDelay=30;
GS_ProtectedObject=[];//Stores objects related to objectives so if they are destroyed or disappear the objective can still complete
GS_OBJArray=[];//Stores objectives and their hierachy, so once the child task are complete the parent can be marked as completed as well
GS_AOSize=2000; //Size of the Main AO
GS_AOSizeEdgePrevention=250; //Subtracts the size of the MAIN AO by this number so objectives aren't placed on the every edge of the AO
GS_SecondaryAOCenterPOS=[]; //Position of the center of secondary objective
GS_MainAOCenterPOS=[]; //Position of the center of main objective
GS_MainPOIPOS=[]; //Position of the points of interest in Main objective area. 
//This can be used along with a garrison script that looks for garrison position in buildings along 
//with locations of "Land_ClutterCutter_small_F" to place down infantry and disable there path finding to have a garrison position

