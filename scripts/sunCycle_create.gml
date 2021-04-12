//daylight length - min = 8
//daylight length - max = 17
//general shape
//min_day = 355
//sinewave
// current_daylight_length = min + (max-min)*sin(((current_day/year)+(min_day/year))*pi)
// daymidpoint = 13*60
// sunrise = daymidpoint - current_daylight_length/2
// sunset = daymidpoint + current_daylight_length/2
// midnight = 1*60

//-- 0. USER VARIABLES--
//how often the sun position to update
sunCycle_alarm = 1;

sunCycle_x_length = 0.9;
sunCycle_y_length = 0.1;
sunCycle_y_spacing = 0.05;


//day min and max data
//in hours
sunCycle_day_min = 8;
sunCycle_day_max = 17;

//when the sun is at its highest
//in hours
sunCycle_day_midpoint = 13;

//the day at which the sunlight is least
sunCycle_min_day = 355/365;

//-- 1. VARIABLES--
//alarm timer
sunCycle_timer = 0;

sunCycle_current_day_length = 0;

SunCycle_current_time = 0;

sunCycle_sunrise = 0;
sunCycle_sunset = 0;

sunCycle_daytime = 0;

//1.1 gui based variables
sunCycle_pos_y = 0;
sunCycle_pos_x = 0;

sunCycle_pos_y_start = window_height*sunCycle_y_length + sunCycle_y_spacing;
sunCycle_pos_x_start = window_width*((1-sunCycle_x_length)/2)

sunCycle_y_radius = window_height*sunCycle_y_length;
sunCycle_x_diam = (window_width)*sunCycle_x_length;

//-- 2. INITIAL CALCULATION--
//calculate the current day_length
sunCycle_current_day_length = sunCycle_day_min + (sunCycle_day_max-sunCycle_day_min)*sin(((clock_current_year_time/clock_max_year_time)+sunCycle_min_day)*pi);

//calculate sunrise/sunset points
sunCycle_sunrise = 60*(sunCycle_day_midpoint - (sunCycle_current_day_length/2));
sunCycle_sunset = 60*(sunCycle_day_midpoint + (sunCycle_current_day_length/2));

sunCycle_nextday_length = sunCycle_day_min + (sunCycle_day_max-sunCycle_day_min)*sin((((clock_current_year_time+1)/clock_max_year_time)+sunCycle_min_day)*pi);

sunCycle_nextday_sunrise = 60*(sunCycle_day_midpoint - (sunCycle_nextday_length/2));
sunCycle_nextday_sunset = 60*(sunCycle_day_midpoint + (sunCycle_nextday_length/2));

//calculate if its daytime or not
if(clock_current_day_time >= sunCycle_sunrise && clock_current_day_time <= sunCycle_sunset)
{
    sunCycle_daytime = 1;
}

sunCycle_time_update();
sunCycle_position_update();


