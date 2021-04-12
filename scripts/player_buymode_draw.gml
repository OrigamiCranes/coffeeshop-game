if(player_state = 2)
{
if(buymode_current[1] != 0)
{

    //draw the current_object sprite
    draw_sprite_ext(buymode_current[1],0,buymode_current_x,
        buymode_current_y,1,1,0,buymode_colour,0.7);

        
    //draw text next to
    var n = 0;
    draw_text(buymode_current_x + (o_god.tile_size * 1.2),buymode_current_y+(n*14),
        buymode_current[0]);
        
    n+= 1;
    draw_text(buymode_current_x + (o_god.tile_size * 1.2),buymode_current_y+(n*14),
        "Price: $"+string(buymode_current[2]));
        

        
}
}
