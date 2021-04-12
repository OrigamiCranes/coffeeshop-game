///o_inventoryBar_spawn_itemSlots()

var n =0; var temp_x = x; var temp_y = y;
while(n < o_player.inventory_max)
{


    temp_x = x+(n*itemSlot_width);
    
    //spawn the itemSlot
    itemSlot[n] = instance_create(temp_x,temp_y,o_inventory_itemSlot);
    
    //set all the itemSlot GUI variables
    itemSlot[n].slot_n = n;
    itemSlot[n].parent = o_player;
    itemSlot[n].gui_parent = id;
    itemSlot[n].callback_drop = player_inventory_add_item;
    itemSlot[n].callback_pickup = player_inventory_remove_item;
    itemSlot[n].item_id = o_player.inventory_id[n,0];
    n++;
}
