///coffeeDispenser_add_coffeeBag(grinder_slot,item_id)

var slot = argument[0];
var  item_id = argument[1];

//--ERROR CHECKING--
//1. CHECK IF ADDING ITEM  IS CoffeeBags

if(item_id.object_index != o_items_ingredient || item_id.type != items_ingredient.coffeeBag)
{

    var output = 0;
    return output;
 
}

//1.1 CHECK IF SLOT IS FREE
else if(coffeeBag_id[slot] != 0)
{
    var output = 0;
    return output;
}

//--ADD COFFEE--
//2. ADD THE COFFEE IF TRUE
else
{
    coffeeBag_id[slot] = item_id;
    var output = 1;
    return output;
}

