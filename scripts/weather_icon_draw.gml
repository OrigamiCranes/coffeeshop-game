///weather_icon_draw(x,y)

var x_pos = argument[0];
var y_pos = argument[1];
draw_sprite_stretched_ext(s_weather,weather_current,x_pos,y_pos,32,32,c_white,1);
