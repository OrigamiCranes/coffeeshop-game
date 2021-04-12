///coffeeDispenser_add_coffee(slot,item_id)
///places coffee in the chosen slot if possible

var slot = argument[0];
var item_id = argument[1];
var output = 0;

//1. ERROR CHECK
if(coffee_n[slot] == coffee_max)
{
    return output;
}

//if adding the coffee makes the coffee_n be bigger than max
else if(coffee_n[slot] == coffee_max - 1 && coffee_id[slot] != 0)
{
    return output
}

//CHECK IF ITEM IS COFFEE
else if(item_id.object_index != o_items_ingredient || item_id.type != items_ingredient.coffee)
{
    return output;
}

//2. ELSE ADD COFFEE
else
{
    
    //2.1 Check if there is a coffee_id there currently
    if(coffee_id[slot] != 0)
    {
        //2.2 If so DESTROY IT
        with(o_god)
        {
            god_remove_item_ingredient()
        }   
        
        instance_destroy(coffee_id[slot],1);
        
    }
        
    //2.3 UPDATE COFFEE_ID
    coffee_id[slot] = item_id;
    
 
    var output = 1;
    return output;
    
    

}


