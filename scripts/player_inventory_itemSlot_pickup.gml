//player_inventory_itemSlot_pickup(id)


//0. CHECK IF THERE IS A ITEM_ID IN THE GUI-ItemSLOT
if(argument[0].item_id == 0)
{
    var output = 0;
    mouse_click_id = 0;
    return output;
}

else
{
    //1. ON MOUSE CLICK ON FRESH ITEM
    //add grab id
    inventory_grab_id = argument[0];
    inventory_grab_item_id = inventory_grab_id.item_id;
    
    //update inventory selected
        /*
        o_player_inventoryBar.itemSlot[o_player_inventoryBar.itemSlot_current].selected = 0;
        temp_id.selected = 1;
        o_player_inventoryBar.itemSlot_current = temp_id.inventory_slot_n;
        */
        
    //update parent inventory selected
    //updateprevious selected
    inventory_grab_id.gui_parent.selected_id.selected = 0;
    
    //update current selected
    inventory_grab_id.selected = 1;
    inventory_grab_id.gui_parent.selected_id = inventory_grab_id;
    inventory_grab_id.active = 1;
    
}
