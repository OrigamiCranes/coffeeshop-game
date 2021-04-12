//player_get_mess(number_of_mess)
//get either plates or trash to put in inventory

//1. Roll to see if its trash or plates
var n = 0;
while(n < argument[0])
{
    
    var temp_item = irandom(1) + 1;

    //2. Add to inventory
    //inventory[inventory_n] = temp_item;
    ds_list_add(inventory,temp_item);

    inventory_n += 1;
    
    if(temp_item = 1)
    {
        inventory_plates += 1;
    }
    else if(temp_item = 2)
    {
        inventory_trash += 1;
    }

    n = n + 1;
}

