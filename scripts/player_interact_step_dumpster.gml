///player_step_interact_dumpster()
if(interaction_cooldown_trigger == 1)
{
    
    player_interact_step_cooldown();

}

else if(inventory_garbage = 0)
{

}
else if(interaction_cooldown_trigger == 1)
{
    
    player_interact_step_cooldown();

}
//else if(inventory > max_items)
//{

//}
else
{

interaction_bar_trigger = 1; 
interaction_current_alarm = interaction_dumpster_alarm;

//2. If can, add to interaction timer
interaction_timer += global.dt_steady;

//3. if timer is above alarm, CLEAN THAT TABLE
if(interaction_timer >= interaction_dumpster_alarm)
{
    interaction_timer = 0;
    
    interaction_bar_trigger = 0;
    
    //add garbage to dumpster
    with(check_id)
    {
        dumpster_add_garbage(1);
    }
    
    //remove garbage from player inventory
    player_remove_garbage(1);
    
    //set cooldown trigger
    interaction_cooldown_trigger = 1;
    
}
}
