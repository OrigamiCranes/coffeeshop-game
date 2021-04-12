///player_step_interact_expressoMaker()

//1. -- CHECK IF CAN INTERACT --
if(interaction_cooldown_trigger == 1)
{
    
    player_interact_step_cooldown();

}

//2. 
else
{

    interaction_cooldown_trigger = 1;
    
    //route depending on if the inventory is already open
    if(check_id.inventory_id == 0)
    {
    
        //POPUP MENU
        with(check_id)
        {
            expressoMaker_open_inventory();
            
        }
        
        
    
    }
    else
    {
    
        //CLOSE THE MENU
        with(check_id)
        {
            expressoMaker_close_inventory();
        }
    }
}

