///player_step_interact_trashcan()

// 0. COOLDOWN CHECK
if(interaction_cooldown_trigger == 1)
{
    
    player_interact_step_cooldown();

}

//--1. TRASH CHECK
//if player has trash
else if(inventory_trash > 0)
{
    interaction_cooldown_trigger = 1;
    
    player_remove_trash(1);
    
    with(check_id)
    {
        trashcan_add_trash(1);
    }
    
}

//else if too much inventory
else if(inventory_n >= inventory_max)
{

}

//if theres too little trash in the trashcan, do nothing
else if(check_id.trash_amount < 2)
{

}
//else if(inventory > max_items)
//{

//}

//ELSE the trash can be emptied
else
{

interaction_bar_trigger = 1; 
interaction_current_alarm = interaction_cleanBin_alarm;

//2. If can, add to interaction timer
interaction_timer += global.dt_steady;

//3. if timer is above alarm, CLEAN THAT TABLE
if(interaction_timer >= interaction_expressoMaker_alarm)
{
    interaction_timer = 0;
    
    interaction_bar_trigger = 0;
    
    //remove all trash from trashcan
    with(check_id)
    {
        expressoMaker_start_expresso();
    }
    
        
    //set cooldown trigger
    interaction_cooldown_trigger = 1;
    
}
}
