//player_get_garbage(number_of_mess)
//get the garbage from the trashcan

//1. loop
var n = 0;    var temp_item = 3;
while(n < argument[0])
{
    
 

    //2. Add to inventory
    //inventory[inventory_n] = temp_item;
    ds_list_add(inventory,temp_item);

    inventory_n += 1;
    
    inventory_garbage  += 1;
 
    n = n + 1;
}
