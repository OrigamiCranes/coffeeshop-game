
//get positon variables from GOD
var temp_x = o_god.gui_player_inventory_x;
var temp_y = o_god.gui_player_inventory_y;

//calculate centre offset
var size = o_player.inventory_max*itemSlot_width;
size = size/2;

var position_x = temp_x - size;

x = position_x;

//calculate height offset
size = itemSlot_height/2;

var position_y = temp_y - size;
 
y = position_y;


//Update itemslots Position
player_inventoryBar_update_position_itemSlots();
