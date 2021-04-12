#define sunCycle_step
//if a clock_min has passed
if(clock_realTime_count = 0)
{

    sunCycle_timer += 1;

    if(sunCycle_timer >= sunCycle_alarm)
    {
        sunCycle_timer = 0;
        
        // 1. Update the Current sunCycle Time
        sunCycle_time_update();
        
        // 2. UPDATE SUN/MOON POSITION
        sunCycle_position_update();
    
    }

}



#define sunCycle_time_update
//route depnding on daytime/nighttime
    if(sunCycle_daytime = 1)
    {
    
        if(clock_current_day_time >= sunCycle_sunset)
        {
            sunCycle_daytime = 0;
        }
        
        sunCycle_current_time = (clock_current_day_time - sunCycle_sunrise)/(sunCycle_sunset-sunCycle_sunrise)
        
    }
    
    //night
    else if(sunCycle_daytime = 0)
    {
        //if currently the start of night
        if(clock_current_day_time >= sunCycle_sunset)
        {
            sunCycle_current_time = (clock_current_day_time-sunCycle_sunset)/(clock_max_day_time+sunCycle_nextday_sunrise-sunCycle_sunset)    
        }
        
        //else its morning (after 12)
        else
        {
            //if its past sunrise, RISE UP and move the variables to current day
            if(clock_current_day_time >= sunCycle_nextday_sunrise)
            {
                sunCycle_daytime = 1;
                
                sunCycle_sunrise = sunCycle_nextday_sunrise;
                sunCycle_sunset = sunCycle_nextday_sunset;
                sunCycle_current_day_length = sunCycle_nextday_length;
                
                //get nextday variables
                sunCycle_nextday_update();
                
            }
            
            sunCycle_current_time = (clock_current_day_time+clock_max_day_time-sunCycle_sunset)/(clock_max_day_time+sunCycle_nextday_sunrise-sunCycle_sunset)
        }
    }