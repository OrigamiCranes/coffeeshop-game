//sunCycle_nextday_update
//updates the nextday times

sunCycle_nextday_length = sunCycle_day_min + (sunCycle_day_max-sunCycle_day_min)*sin((((clock_current_year_time+1)/clock_max_year_time)+sunCycle_min_day)*pi);

sunCycle_nextday_sunrise = 60*(sunCycle_day_midpoint - (sunCycle_nextday_length/2));
sunCycle_nextday_sunset = 60*(sunCycle_day_midpoint + (sunCycle_nextday_length/2));

