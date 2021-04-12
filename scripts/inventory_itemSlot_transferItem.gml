///inventory_itemSlot_transferItem(itemSlot_pickup_id,itemSlot_drop_id,item_id)

var pickup_id = argument[0];
var drop_id = argument[1];
var item_id = argument[2];

var output = -1;

//0. Check if item ids are the same
if(drop_id == item_id)
{
    output = 0;
    return output;
}

//1. Check if Item Can be Dropped into Drop_id itemSlot
//1.1 Run Drop_id callback_drop script
with(drop_id.parent)
{   
    //1.2 Get 0/1 value for false/true working
    other.output = script_execute(other.drop_id.callback_drop,other.drop_id.slot_n,other.item_id);
}

//IF COULD DROP
if(output == 1)
{
    //2. Run Pickup_id callback_pickup script
    with(pickup_id.parent)
    {
        other.output = script_execute(other.pickup_id.callback_pickup,other.pickup_id.slot_n,other.item_id);
    
    }
    
    if(output == 0)
    {
    
    }
    else if(output == 1)
    { 
        item_id.parent = drop_id.parent;
    
        return output;
    }
}
else if(output == 0)
{
    //ELSE IF COULDNT DROP
    //3.
    return output;
}

