
//start with three item slots
/**
inventory[0] = 0;
inventory[1] = 0;
inventory[2] = 0;
*/
/*
1 = plate
2 = trash
3 = garabage
*/


inventory = ds_list_create();

inventory_n = 0;
inventory_max = 3;

var n = 0;
while(n < inventory_max)
{
    //item type
    new_inventory[n,0] = 0;
        
    //number of items 
    new_inventory[n,1] = 0;
    
    //ids
    inventory_id[n,0] = 0;
        
    n++;
}

inventory_plates = 0;
inventory_trash = 0;
inventory_garbage = 0;

//spawn inventory Bar
instance_create(0,0,o_player_inventoryBar)

inventory_grab_id = 0;
inventory_place_id = 0;
