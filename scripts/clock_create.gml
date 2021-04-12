
//0. USER VARIABLES
//if == 5, 5 second irl means 1 min
clock_u_ratio = 0.9;

// variables
clock_realTime_ratio = clock_u_ratio;

clock_current_mins = 0;
clock_current_hour = 9;

clock_current_day_time = (clock_current_hour*60) + clock_current_mins; 
clock_max_day_time = 24*60;

clock_current_day = 1;
clock_current_month = 1;
clock_current_year = 2018;

clock_max_year_time = 365-1;
clock_current_year_time = 0;

clock_month_days = 31;

clock_realTime_count = 0;

//alarms
clock_alarm_hour = 0;
clock_alarm_day = 0;
clock_alarm_month = 0;
clock_alarm_year = 0;

//draw variables
clock_draw_mins_sprite[0] = floor(clock_current_mins / 10);
clock_draw_mins_sprite[1] = clock_current_mins mod 10;

clock_draw_hour_sprite[0] = floor(clock_current_hour / 10);
clock_draw_hour_sprite[1] = clock_current_hour mod 10;

clock_draw_day_sprite[0] = floor(clock_current_day / 10);
clock_draw_day_sprite[1] = clock_current_day mod 10;

clock_draw_month_sprite[0] = floor(clock_current_month / 10);
clock_draw_month_sprite[1] = clock_current_month mod 10;


clock_draw_year_sprite[0] = floor(clock_current_year / 1000);
clock_draw_year_sprite[1] = floor((clock_current_year/100) mod 10);
clock_draw_year_sprite[2] = floor((clock_current_year / 10) mod 10);
clock_draw_year_sprite[3] = clock_current_year mod 10;
