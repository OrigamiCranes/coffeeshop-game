

// If Left Click - Then Activate Bean Sprayer
if(action_shoot_key == 1)
{
    
    //Add to flow Time
     timer_flow = timer_flow + global.dt_steady
    
    //Check if time to spawn
    if(timer_flow >= alarm_flow)
    {
        
        // reset timer
        timer_flow = 0;
        
        //Spawn Coffee Flow
        instance_create(o_expressoMaker.flow_x,o_expressoMaker.flow_y,o_coffeeFlow);
           
    }
    
}
