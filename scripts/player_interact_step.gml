//player_step_interact
//interact with objects

//if interaction key ios pressed
if(action_interaction_key == 1)
{
    
    //1. Initiate Started Interaction Alarm
    if(interaction_release_trigger = 0)
    {
        interaction_release_trigger = 1
    }
    
    //2. Route to interaction object
    switch(check_id.object_index)
    {
    
        case o_table:
        {
            player_interact_step_table()
            break;
        }
        
        case o_till:
        {
            player_interact_step_till()
            break;
        }
        
        case o_trashcan:
        {
            player_interact_step_trashcan()
            break;
        }
        
        case o_dumpster:
        {
            player_interact_step_dumpster();
            break;
        }
        
        case o_sink:
        {
            player_interact_step_sink();
            break;
        }
        
        case o_expressoMaker:
        {
            player_interact_step_expressoMaker();
            break;
        }
    }

}

// If interaction key has just been released, check for cooldown etc.
else if(action_interaction_key == 0)
{
    if(interaction_release_trigger = 1)
    {
        if(interaction_cooldown_trigger == 1)
        {
    
            player_interact_step_cooldown();

        }
        else
        {
            interaction_bar_trigger = 0;
            interaction_timer = 0;
            interaction_release_trigger = 0;
        }
        
        
    }
}
