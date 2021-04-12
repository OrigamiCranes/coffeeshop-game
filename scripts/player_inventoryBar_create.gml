
//the currently selected item
itemSlot_current = 0;

itemSlot_width = 64;
itemSlot_height = 64;

//itemslot ID
itemSlot[0] = 0;

//Spawn the item slots
player_inventoryBar_spawn_itemSlots();

//Calculate X Position for Centre of screen
player_inventoryBar_calculate_position();

//UPDATE ITEMSLOT CURRENT
itemSlot[itemSlot_current].selected = 1;


