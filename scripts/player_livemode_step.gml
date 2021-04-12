if(player_state == 1)
{
    
    //Initi Check
    if(livemode_init == 0)
    {
        player_livemode_init();
    }
    
    player_camera_step();
    
    //all the normal actions of the game
    player_movement_step();

    player_interaction_step();

    player_interact_step();
    
    player_mouse_step();



}
