///expressoMaker_add_coffee(coffeeHolder_slot,item_id)

var slot = argument[0];
var item_id = argument[1];

//--ERROR CHECKING--
//1. CHECK IF ADDING ITEM  IS COFFEE

if(item_id.object_index != o_items_ingredient || item_id.type != items_ingredient.coffee)
{

    var output = 0;
    return output;
 
}

//1.1 CHECK IF SLOT IS FREE
else if(coffeeHolder_coffee_id[slot] != 0)
{
    var output = 0;
    return output;
}

//--ADD COFFEE--
//2. ADD THE COFFEE IF TRUE
else
{
    coffeeHolder_coffee_id[slot] = item_id;
    coffeeHolder_coffee[slot] = item_id;
}


