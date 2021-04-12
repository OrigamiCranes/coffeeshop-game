//weather_thermometer_draw(x,y)

var x_start = argument[0];
var y_start = argument[1];

var w = 32*2;
var h = 96*2;

var x_pos = x_start;
var y_pos = y_start;
draw_sprite_stretched_ext(s_thermometer,weather_thermometer_draw_sprite,x_pos,y_pos,w,h,c_white,1);
