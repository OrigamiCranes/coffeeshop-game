//player_inventory_itemSlot_dropIn(place_id)
//drop the item in the slot
inventory_place_id = argument[0];
            
//IF SO, THEN LETS MOVE THE ITEM
inventory_itemSlot_transferItem(inventory_grab_id,inventory_place_id,inventory_grab_item_id);
     
//reset inventory grab
inventory_grab_id.active = 0;
inventory_grab_id = 0;   
