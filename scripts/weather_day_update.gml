//weather_dailyUpdate
//updates the weather, temp, rain etc. 

//1. Calculate the Temp based on monthly averages and daily curve

// 1.2 Generate STD Min Max for Today
weather_today_temp_max = gaussianDistribution(weather_monthly_temp_max[clock_current_month-1],weather_temp_deviation_max*weather_monthly_temp_max[clock_current_month-1]);
weather_today_temp_min = gaussianDistribution(weather_monthly_temp_min[clock_current_month-1],weather_temp_deviation_min*weather_monthly_temp_max[clock_current_month-1]);

// 1.3 Calculate Difference between
weather_today_temp_difference = weather_today_temp_max - weather_today_temp_min;

// 1.4 Apply Daily Curve
var n = 0;
while(n<24)
{
    weather_today_temp[n] = weather_today_temp_min + (weather_hourly_temp_scale[n] * weather_today_temp_difference);
    n = n + 1;
}


// 2. Calculate the times of day its gonna rain if at all
weather_today_rain_start = clearArray_2d(weather_today_rain_start,0);
weather_today_rain_end = clearArray_2d(weather_today_rain_end,0);

if(weather_rainfall_day[clock_current_day-1] == 1)
{
    // 2.1 generate rain number of times
    //weather_today_rain_n = irandom(weather_today_rain_max) + 1;
    weather_today_rain_n = 1;
    
    // 2.2 loop that calculates times of start and stop
    var n = 0;var rain_length = 0; var max_rain = weather_rain_max_total
    var second_loop = 0;
    while(n < weather_today_rain_n)
    {
        
        //generate rain length
        if(max_rain < weather_rain_max_length)
        {
            rain_length = random_range(weather_rain_min_length,max_rain);
        } 
        else
        {
            rain_length = random_range(weather_rain_min_length,weather_rain_max_length); 
        }
         
        var rain_hour = floor(rain_length);
        var rain_mins = floor(frac(rain_length) * 60);
        
        //if first loop   
        if(second_loop == 0)
        {
        
        //random start time
        var start_hour = irandom_range(0,23-rain_hour);
        var start_mins = irandom_range(0,59);
        
        // calculate end time
        var end_hour = start_hour + rain_hour;
        var end_mins = start_mins + rain_mins;
        
        // account for any minute overlap
        if(end_mins > 60)
        {
            end_hour = end_hour + 1;
            if(end_hour > 23)
            {
                end_hour = 23;
            }
            
            end_mins = end_mins - 60;
        }
        
        //update start/stop times
        weather_today_rain_start[n,0] = start_hour;
        weather_today_rain_start[n,1] = start_mins;
        
        weather_today_rain_end[n,0] = end_hour; 
        weather_today_rain_end[n,1] = end_mins;
        
        max_rain = weather_rain_max_total - rain_length;
        
        //prompt a second loop if neccessary.
        second_loop = 1;
        }
        
        //if second LOOP or more
        else
        {
            if(rain_hour + end_hour > 23)
            {
                rain_hour = 23 - end_hour;
                
            }
        
        start_hour = irandom_range(end_hour+1,23-rain_hour);
        
        if(end_hour == start_hour)
        {
            start_mins = irandom_range(end_mins+10,59);
        }
        else
        {
            start_mins = irandom_range(0,59);
        }
        
        
        end_hour = start_hour + rain_hour;
        end_mins = start_mins + rain_mins;
        
        if(end_mins > 60)
        {
            end_hour = end_hour + 1;
            if(end_hour > 23)
            {
                end_hour = 23;
            }
            
            end_mins = end_mins - 60;
        }
        
        weather_today_rain_start[n,0] = start_hour;
        weather_today_rain_start[n,1] = start_mins;
        
        weather_today_rain_end[n,0] = end_hour; 
        weather_today_rain_end[n,1] = end_mins;
        
        max_rain = weather_rain_max_total - rain_length; 
        
        }
        
        n = n + 1;
    }
}

