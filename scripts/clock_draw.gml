//clock_draw(x,y)

//position at width/48
//(height/10)*9

var x_start = argument[0];
var y_start = argument[1];

var x_border = 16;
var y_border = 16;

var y_spacing = 8;
var x_spacing = 8;

var scaling = 1;

var w = 32;
var h = 64; 



//draw time
var x_pos = x_start + x_border;
var y_pos = y_start + y_border; 

draw_sprite_stretched_ext(s_number,clock_draw_hour_sprite[0],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_hour_sprite[1],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w/2;
draw_sprite_stretched_ext(s_number,15,x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w/2;
draw_sprite_stretched_ext(s_number,clock_draw_mins_sprite[0],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_mins_sprite[1],x_pos,y_pos,w,h,c_white,1);


//draw date
y_pos += h + y_spacing;
x_pos = x_start + x_border + w*0.15;

w = w * 0.25;
h = h * 0.25;

draw_sprite_stretched_ext(s_number,clock_draw_day_sprite[0],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_day_sprite[1],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,16,x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_month_sprite[0],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_month_sprite[1],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,16,x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_year_sprite[0],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_year_sprite[1],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_year_sprite[2],x_pos,y_pos,w,h,c_white,1);

x_pos = x_pos + x_spacing + w;
draw_sprite_stretched_ext(s_number,clock_draw_year_sprite[3],x_pos,y_pos,w,h,c_white,1);


