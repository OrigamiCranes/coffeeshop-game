//if still customers to be spawned
if(spawner_current_n != -1)
{
    //if its time to spawn a customer
    if(clock_current_mins >= spawner_customer_spawn_time[spawner_current_n])
    {
    
    spawner_current_n ++;
    
    if(spawner_current_n >= spawner_customer_currentH)
    {
        spawner_current_n = -1;
    }
    
    //SPAWN CUSTOMER
    god_spawn_customer();
    
    }
}
