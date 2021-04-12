//player_remove_garbage(number)
//remove garbage from palyer

//1. loop
var n = 0; var temp_item = 3;
while(n < argument[0])
{
    
    

    //2. remove from inventory
    
    //inventory[inventory_n] = temp_item;
    var val =  ds_list_find_index(inventory,temp_item);
    ds_list_delete(inventory,val);
    
    inventory_n -= 1;

    
    inventory_garbage  -= 1;
 
    n = n + 1;
}
