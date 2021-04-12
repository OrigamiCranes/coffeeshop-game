//weather_rainCheck

//1. If it rains today
if(weather_rainfall_day[clock_current_day-1] == 1)
{
    //if currently raining
    if(weather_current == 1)
    {
        //if ends on current hour
        if(weather_today_rain_end[weather_today_rain_count,0] == clock_current_hour)
        {
            //set alarm to check each min
            weather_rain_alarm = 2;
        }
    }
    else
    {
        //if ends on current hour
        if(weather_today_rain_start[weather_today_rain_count,0] = clock_current_hour)
        {
            //set alarm to check each min
            weather_rain_alarm = 1;
        }
    }
    
    //
}
