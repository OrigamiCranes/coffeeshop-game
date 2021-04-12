//1. draw the itemSlot
draw_sprite_stretched_ext(s_inventory_itemSlot,selected,x,y,
                    gui_parent.itemSlot_width,
                    gui_parent.itemSlot_height,
                    c_white,1);
                    
//2. Draw the INVENTORY ITEM
if(item_id != 0)
{
    //if its sitting inactive, draw onto the itemSlot
    if(active = 0)
    {
         draw_sprite_stretched_ext(item_sprite,item_subImage,x,yx,
                        o_player_inventoryBar.itemSlot_width,
                        o_player_inventoryBar.itemSlot_height,
                        c_white,1);
    
    }
    //3.if active, draw onto the mouse
    else if(active = 1)
    {
        draw_sprite_stretched_ext(item_sprite,item_subImage,mouse_x,mouse_y,
                        o_player_inventoryBar.itemSlot_width,
                        o_player_inventoryBar.itemSlot_height,
                        c_white,1);
    
    }
}
