//weather_temp_draw(x,y)
var x_start = argument[0];
var y_start = argument[1];

var scaling = 0.25;

var x_border = 16*scaling;
var y_border = 16*scaling;

var y_spacing = 8*scaling;
var x_spacing = 8*scaling;



var w = 32* scaling;
var h = 64 * scaling; 

var x_pos = x_start + x_border;
var y_pos = y_start + y_border; 

draw_sprite_stretched_ext(s_number,weather_today_temp_draw_sprite[0],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,weather_today_temp_draw_sprite[1],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,weather_today_temp_draw_sprite[2],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w/2;
draw_sprite_stretched_ext(s_number,19,x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w/2;
draw_sprite_stretched_ext(s_number,weather_today_temp_draw_sprite[3],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,13,x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,10,x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_weather,weather_current,x_pos,y_pos,32,32,c_white,1);
