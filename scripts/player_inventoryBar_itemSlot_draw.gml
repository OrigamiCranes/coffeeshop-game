//draw the itemSlot
draw_sprite_stretched_ext(s_player_inventory_itemSlot,selected,x,y,
                    o_player_inventoryBar.itemSlot_width,
                    o_player_inventoryBar.itemSlot_height,
                    c_white,1);
                    
//Draw the Inventory Item
if(active = 1)
{
  if(ds_list_size(o_player.inventory) > inventory_slot_n)
    {
        draw_sprite_stretched_ext(s_inventory,o_player.inventory[| inventory_slot_n],window_mouse_get_x(),window_mouse_get_y(),
                        o_player_inventoryBar.itemSlot_width,
                        o_player_inventoryBar.itemSlot_height,
                        c_white,1);
    }  
}
else
{

    if(ds_list_size(o_player.inventory) > inventory_slot_n)
    {
        draw_sprite_stretched_ext(s_inventory,o_player.inventory[| inventory_slot_n],x,y,
                        o_player_inventoryBar.itemSlot_width,
                        o_player_inventoryBar.itemSlot_height,
                        c_white,1);
    }

}
