///CHECK IF IN BUILDMODE STATE
if(player_state == 3)
{

    //1. CAMERA MOVEMENT
    player_camera_step();
    
    //2. CHECK FOR UPDATE ON SELECTED BUILD ITEM
    player_buildmode_selection_step();
    
    //2.1 CALCULATE GHOST IMAGE
    if(buildmode_hold == 0)
    {
        player_mouse_ghostPosition_step();
    }
    else
    {
        //draw the wall/floor area
        player_buildmode_ghostPosition_step();
    }
    
    //3. CHECK FOR LEFT CLICK
    player_buildmode_purchase_step();
    
}
