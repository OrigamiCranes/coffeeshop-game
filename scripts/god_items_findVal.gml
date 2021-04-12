///god_items_findVal(id,val)
//routes to the correct utensil/ingredient etc. findVal function

//1. Get Relevent variables from item_id
var item_id = argument[0];
var val = argument[1];

var type = item_id.type;
var subtype = item_id.subtype;

var output = 0;

//2. route depending on object type
switch(item_id.object_index)
{
    case o_items_utensil:
    {
        output =god_items_utensil_findVal(type,subtype,val);
    }
    break;
    
    case o_items_ingredient:
    {
        output = god_items_ingredients_findVal(type,subtype,val);
    
    }
    break;
    
    case o_items_drink:
    {
        output = god_items_drink_findVal(type,subtype,val);
    }
    break;
}

return output;
