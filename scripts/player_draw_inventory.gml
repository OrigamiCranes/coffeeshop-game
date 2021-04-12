///player_draw_inventory(x,y)

var x_start = argument[0];
var y_start = argument[1];

var scaling = 1;

var x_border = 16*scaling;
var y_border = 16*scaling;

var y_spacing = 8 * scaling;
var x_spacing = 8 * scaling;

var w = 32*scaling;
var h = 32*scaling;

var x_pos = x_start + x_border;
var y_pos = y_start + y_border; 

//1. Draw bg

//2. Draw Border

//3. Draw Inventory
var n = 0;
while(n < ds_list_size(o_player.inventory))
{
    draw_sprite_stretched_ext(s_inventory,o_player.inventory[| n],x_pos,y_pos,w,h,c_white,1);
    x_pos = x_pos + x_spacing + w;
    n++;
}
//x_spacing
//x_border

