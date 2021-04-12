//CHECK IF IN BUYMODE STATE
if(player_state == 2)
{
    
    //1. READ KEYINPUTS - CONVERT TO CAMERA MOVEMENT
    player_camera_step();
    
    //2. CHECK FOR UPDATE ON SELECTED ITEM
    player_buymode_selection_step();
    
    //2.1 CALCULATE GHOST IMAGE FROM MOUSE POSITION
    player_mouse_ghostPosition_step();
    
    //3. ELSE IF CHECK FOR LEFT CLICK PURCHASE
    player_buymode_purchase_step();
    

}
