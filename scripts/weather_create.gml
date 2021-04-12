#define weather_create
//0. USER VARIABLES
//---------------------------------
//percentage based deviation from average temp
weather_temp_deviation_max = 0.3;
weather_temp_deviation_min = 0.3;

//percentage based deviation from average monthly rainfall days
weather_rainfall_deviation = 0.2;


// max is value+1, i.e if 2, max is 3.
weather_today_rain_max = 2;

// max hours of rain length without break
weather_rain_max_length = 9;
weather_rain_min_length = 0.4;

weather_rain_max_total = 18;


//---------------------------------
//0. Weather Current
// 0 = normal
// 1 = rain
weather_current = 0;

weather_rain_alarm = 0;
//1. Get Monthly Average Variables / Rainfall
weather_monthly_temp();

//1.1 Get Hourly Curve
weather_hourly_temp();

//1.2 Get today temp
weather_today_hour_temp();

//1.3 Get Rainfall days
weather_rainfall_month();

//1.4 Thermomemter Settings
weather_create_thermometer();

//-------
//2. Update Month
weather_month_update();

//2.1 update day
weather_day_update();

//2.2 update hour
weather_hour_update();




#define weather_monthly_temp
//average temps for ENGLAND,UK
//https://en.wikipedia.org/wiki/Climate_of_the_United_Kingdom
weather_monthly_temp_max[0] = 6.4
weather_monthly_temp_max[1] = 6.6
weather_monthly_temp_max[2] = 9.1
weather_monthly_temp_max[3] = 11.8
weather_monthly_temp_max[4] = 15.6
weather_monthly_temp_max[5] = 18.6
weather_monthly_temp_max[6] = 20.4
weather_monthly_temp_max[7] = 20.1
weather_monthly_temp_max[8] = 17.5
weather_monthly_temp_max[9] = 14.0
weather_monthly_temp_max[10] = 9.4
weather_monthly_temp_max[11] = 7.3


weather_monthly_temp_min[0] = 1.2
weather_monthly_temp_min[1] = 0.9
weather_monthly_temp_min[2] = 2.0
weather_monthly_temp_min[3] = 3.9
weather_monthly_temp_min[4] = 6.8
weather_monthly_temp_min[5] = 9.7
weather_monthly_temp_min[6] = 11.7
weather_monthly_temp_min[7] = 11.5
weather_monthly_temp_min[8] = 9.6
weather_monthly_temp_min[9] = 7.2
weather_monthly_temp_min[10] = 3.6
weather_monthly_temp_min[11] = 2.0


weather_monthly_rainfall[0] = 13.2	
weather_monthly_rainfall[1] = 10.4	
weather_monthly_rainfall[2] = 11.5	
weather_monthly_rainfall[3] = 10.4	
weather_monthly_rainfall[4] = 9.9	
weather_monthly_rainfall[5] = 9.6	
weather_monthly_rainfall[6] = 9.5	
weather_monthly_rainfall[7] = 9.9	
weather_monthly_rainfall[8] = 9.9	
weather_monthly_rainfall[9] = 12.6	
weather_monthly_rainfall[10] = 13.1	
weather_monthly_rainfall[11] = 12.7

// CALCULATE TEMP DIFFERENCE PER MONTH
var n = 0;
while(n<12)
{
    weather_monthly_temp_difference[n] = weather_monthly_temp_max[n] - weather_monthly_temp_min[n];
    n = n+1;
}

#define weather_hourly_temp
//https://plot.ly/create/?fid=chloecrossman:152#/
//https://plot.ly/~chloecrossman/152.embed
weather_hourly_temp_scale[0]= 0.1483
weather_hourly_temp_scale[1]= 0.1002
weather_hourly_temp_scale[2]= 0.0608
weather_hourly_temp_scale[3]= 0.0326
weather_hourly_temp_scale[4]= 0.0053
weather_hourly_temp_scale[5]=      0
weather_hourly_temp_scale[6]= 0.0493
weather_hourly_temp_scale[7]= 0.1683
weather_hourly_temp_scale[8]= 0.3307
weather_hourly_temp_scale[9]= 0.5241
weather_hourly_temp_scale[10]= 0.6986
weather_hourly_temp_scale[11]= 0.8470
weather_hourly_temp_scale[12]= 0.9408
weather_hourly_temp_scale[13]= 0.9994
weather_hourly_temp_scale[14]= 1.0000
weather_hourly_temp_scale[15]= 0.9592
weather_hourly_temp_scale[16]= 0.8558
weather_hourly_temp_scale[17]= 0.7278
weather_hourly_temp_scale[18]= 0.5702
weather_hourly_temp_scale[19]= 0.4366
weather_hourly_temp_scale[20]= 0.3312
weather_hourly_temp_scale[21]= 0.2535
weather_hourly_temp_scale[22]= 0.2121
weather_hourly_temp_scale[23]= 0.1768

#define weather_today_hour_temp
weather_today_temp[0] = 0;
weather_today_temp[1] = 0;
weather_today_temp[2] = 0;
weather_today_temp[3] = 0;
weather_today_temp[4] = 0;
weather_today_temp[5] = 0;
weather_today_temp[6] = 0;
weather_today_temp[7] = 0;
weather_today_temp[8] = 0;
weather_today_temp[9] = 0;
weather_today_temp[10] = 0;
weather_today_temp[11] = 0;
weather_today_temp[12] = 0;
weather_today_temp[13] = 0;
weather_today_temp[14] = 0;
weather_today_temp[15] = 0;
weather_today_temp[16] = 0;
weather_today_temp[17] = 0;
weather_today_temp[18] = 0;
weather_today_temp[19] = 0;
weather_today_temp[20] = 0;
weather_today_temp[21] = 0;
weather_today_temp[22] = 0;
weather_today_temp[23] = 0;

weather_today_temp_difference = 0;

//temp sprite numbers
//0 minus/plus sign
//1 = 10s
//2 = 1s
//3 = .1s
weather_today_temp_draw_sprite[0] = 0;
weather_today_temp_draw_sprite[1] = 0;
weather_today_temp_draw_sprite[2] = 0;
weather_today_temp_draw_sprite[3] = 0;

//rain start/stop times, 
// 0 is hour
// 1 is mins

weather_today_rain_start[0,0] = 0;
weather_today_rain_start[0,1] = 0;

weather_today_rain_end[0,0] = 0;
weather_today_rain_end[0,1] = 0;

weather_today_rain_n = 0;
weather_today_rain_count = 0;

#define weather_rainfall_month


weather_rainfall_n = 0;

weather_rainfall_day[0] = 0;
weather_rainfall_day[1] = 0;
weather_rainfall_day[2] = 0;
weather_rainfall_day[3] = 0;
weather_rainfall_day[4] = 0;
weather_rainfall_day[5] = 0;
weather_rainfall_day[6] = 0;
weather_rainfall_day[7] = 0;
weather_rainfall_day[8] = 0;
weather_rainfall_day[9] = 0;
weather_rainfall_day[10] = 0;
weather_rainfall_day[11] = 0;
weather_rainfall_day[12] = 0;
weather_rainfall_day[13] = 0;
weather_rainfall_day[14] = 0;
weather_rainfall_day[15] = 0;
weather_rainfall_day[16] = 0;
weather_rainfall_day[17] = 0;
weather_rainfall_day[18] = 0;
weather_rainfall_day[19] = 0;
weather_rainfall_day[20] = 0;
weather_rainfall_day[21] = 0;
weather_rainfall_day[22] = 0;
weather_rainfall_day[23] = 0;
weather_rainfall_day[24] = 0;
weather_rainfall_day[25] = 0;
weather_rainfall_day[26] = 0;
weather_rainfall_day[27] = 0;
weather_rainfall_day[28] = 0;
weather_rainfall_day[29] = 0;
weather_rainfall_day[30] = 0;