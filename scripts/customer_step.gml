if(moving = 1 )
{
    path_speed = o_god.customer_speed * global.dt_steady;
    depth_update();
}

//if in queue
if(status = 2)
{

    customer_step_queue();

}
//if at table
if(status = 7)
{
    //check alarm
    timer_default += global.dt_steady;
    
    //if alarm goes off
    if(timer_default >= alarm_default)
    {
        
        //leave table
        customer_complete_occupyTable();
        
    }
}
