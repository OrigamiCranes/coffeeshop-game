

draw_set_colour(c_black);
draw_roundrect_ext(0,window_height*0.75,window_width*0.4,window_height,0,0,0);

weather_thermometer_draw(gui_weather_thermometer_x, gui_weather_thermometer_y);
weather_temp_draw(gui_weather_temp_x,gui_weather_temp_y);
clock_draw(gui_clock_x, gui_clock_y);
money_draw(gui_money_x,gui_money_y);
player_draw_inventory(0,0);
