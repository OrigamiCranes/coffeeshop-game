///weather_temp_hour_update
//updates the gui sprites for the temp/ thermometer


var temp = weather_today_temp[clock_current_hour];


// 1. Update Temp Number Sprites
//if the number is is only 3 sig figures
if(abs(temp) <= 10)
{
    //if a negative number
    if(temp < 0)
    {
        weather_today_temp_draw_sprite[1] = 18;
    }
    //else its positive
    else
    {
        weather_today_temp_draw_sprite[1] = 17;
    }
    
    weather_today_temp_draw_sprite[0] = 17;
    weather_today_temp_draw_sprite[2] = floor(abs(temp) mod 10);
    weather_today_temp_draw_sprite[3] = floor(abs(temp) * 10 mod 10);
}
//if its 4 significant figures 
else
{
    //if a negative number
    if(temp < 0)
    {
        weather_today_temp_draw_sprite[0] = 18;
    }
    //else its positive
    else
    {
        weather_today_temp_draw_sprite[0] = 17;
    }
    
    weather_today_temp_draw_sprite[1] = floor(abs(temp) / 10);
    weather_today_temp_draw_sprite[2] = floor(abs(temp) mod 10);
    weather_today_temp_draw_sprite[3] = floor(abs(temp) * 10 mod 10);
}

// 2. Update Therometer Sprite
// if below or at min, sprite no. is 0
if(temp <= weather_thermometer_temp_min)
{
    weather_thermometer_draw_sprite = 0;
}
//if at or above max, sprite no. is 81
else if(temp >= weather_thermometer_temp_max)
{
    weather_thermometer_draw_sprite = 81;
}
else
{

    weather_thermometer_draw_sprite = round((temp-weather_thermometer_temp_min) / weather_thermometer_quantise);
}
