//player_step_interact_table

//1. Check if player can begin to clean table
//if not on cooldown
if(interaction_cooldown_trigger == 1)
{
    
    player_interact_step_cooldown();

}

//if table is actually dirty
else if(check_id.messLevel < 1)
{

}

else if(inventory_n >= inventory_max)
{

}

else
{

interaction_bar_trigger = 1; 
interaction_current_alarm = interaction_table_alarm;

//2. If can, add to interaction timer
interaction_timer += global.dt_steady;

//3. if timer is above alarm, CLEAN THAT TABLE
if(interaction_timer >= interaction_table_alarm)
{
    interaction_timer = 0;
    
    interaction_bar_trigger = 0;
    
    //clean table by 1 mess level
    with(check_id)
    {
        table_clean_table(1);
    }
    
    //get mess item from table
    player_get_mess(1);
    
    //set cooldown trigger
    interaction_cooldown_trigger = 1;
    
}
}
