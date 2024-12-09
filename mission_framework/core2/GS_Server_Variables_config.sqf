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
GS_AOSize=2000;
GS_AOSizeEdgePrevention=250;
GS_SecondaryAOCenterPOS=[];
GS_MainAOCenterPOS=[];
GS_MainPOIPOS=[];

