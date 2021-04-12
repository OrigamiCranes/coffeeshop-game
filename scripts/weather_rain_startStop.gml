if(weather_rain_alarm != 0)
{
    //if rain is gonna start
    if(weather_rain_alarm = 1)
    {
        //if matches mins
        if(clock_current_mins == weather_today_rain_start[weather_today_rain_count,1])
        {
            weather_current = 1;
            weather_rain_alarm = 0;
        }
        
    }
    else if(weather_rain_alarm = 2)
    {
    
        //if matches mins
        if(clock_current_mins == weather_today_rain_end[weather_today_rain_count,1])
        {
            weather_current = 0;
            weather_rain_alarm = 0;
        }
    
    }

}
