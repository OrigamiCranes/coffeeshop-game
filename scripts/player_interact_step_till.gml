//player_step_interact_table()

//1. -- CHECK IF CAN INTERACT --
if(interaction_cooldown_trigger == 1)
{
    
    player_interact_step_cooldown();

}

//2. -- INTERACT --
//if waiting for customer
else
{

interaction_cooldown_trigger = 1;
if(check_id.till_status = 1)
{
    
    with(check_id)
    {
        till_ringCustomer();
    }
}
    

else if(check_id.till_status = 3)
{
    with(check_id)
    {
        till_complete_order();
    }
}
}
