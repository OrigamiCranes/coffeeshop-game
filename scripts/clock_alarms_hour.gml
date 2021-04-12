//1. Check which hour it is and route.
/***
switch(clock_current_hour)
{
   case: 0
   {
   
   }
}
***/

// 2. Checks for rain update each hour
weather_rainCheck_hour_update();

// 2.1 Update Thermometer stats
weather_hour_update();

spawner_hour_update();
