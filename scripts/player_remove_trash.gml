///player_remove_trash(number)
//remove trash from palyer

//1. loop
var n = 0; var temp_item = 2;
while(n < argument[0])
{
    
    

    //2. remove from inventory
    ///inventory[inventory_n] = temp_item;
    var val =  ds_list_find_index(inventory,temp_item);
    ds_list_delete(inventory,val);
    
    inventory_n -= 1;


    
    inventory_trash  -= 1;
 
    n = n + 1;
}
