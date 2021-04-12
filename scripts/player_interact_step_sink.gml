///player_step_interact_sink()

//if player has plates
if(interaction_cooldown_trigger == 1)
{
    
    player_interact_step_cooldown();

}

else if(inventory_plates > 0)
{
    interaction_cooldown_trigger = 1;
    
    player_remove_plate(1);
    
    with(check_id)
    {
        sink_add_dishes(1);
    }
    
}
else if(check_id.dirty_dishes == 0)
{

}
//else wash dishes
else
{

interaction_bar_trigger = 1; 
interaction_current_alarm = interaction_cleanDishes_alarm;

//2. If can, add to interaction timer
interaction_timer += global.dt_steady;

//3. if timer is above alarm, CLEAN THAT TABLE
if(interaction_timer >= interaction_cleanDishes_alarm)
{
    interaction_timer = 0;
    
    interaction_bar_trigger = 0;
    
    //remove all trash from trashcan
    with(check_id)
    {
        sink_clean_dishes(1);
    }
    
        
    //set cooldown trigger
    interaction_cooldown_trigger = 1;
    
}
}

