//weather_monthlyUpdate

// 1. Update the monthly rainfall stats
weather_rainfall_n = round(gaussianDistribution(weather_monthly_rainfall[clock_current_month-1],weather_rainfall_deviation*weather_monthly_rainfall[clock_current_month-1]));

// 2. Create Rainfall Days
var n = 0; var days_left = clock_month_days;
while(n <= clock_month_days)
{
    //randomly choose if its gonna rain
    if(random(1) <= (weather_rainfall_n /days_left))
    {
        weather_rainfall_day[n] = 1;
        weather_rainfall_n = weather_rainfall_n - 1;
    }
    
    days_left = days_left - 1;
    n = n + 1;   
}
