///money_draw(x,y)
var x_start = argument[0];
var y_start = argument[1];

var scaling = 0.5;

var x_border = 16*scaling;
var y_border = 16*scaling;

var y_spacing = 8 * scaling;
var x_spacing = 8 * scaling;

var w = 32*scaling;
var h = 64*scaling;

var x_pos = x_start + x_border;
var y_pos = y_start + y_border; 

//draw rect
draw_set_colour(c_black);
draw_roundrect_ext(x_start,y_start,x_start+(w*6)+(x_spacing*5)+(x_border*2),
                    y_start+h+(y_border*2),0,0,0);


// draw numbers
var n = 0;
while(n < array_length_1d(money_draw_balance_sprite))
{
    draw_sprite_stretched_ext(s_number,money_draw_balance_sprite[n],x_pos,y_pos,w,h,c_white,1);
    x_pos = x_pos + x_spacing + w;
    n = n + 1;
}

