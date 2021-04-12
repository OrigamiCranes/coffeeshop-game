//coffeeDispenser_dispense_coffee(slot)
///dispense coffee to the coffee slot

var slot = argument[0];

//0. CHECK IF ANY COFFEE LEFT TO DISPENSE
if(coffee_n[slot] == 0)
{
    var output = 0;
    return output;
    
}

//1. create the object
with(o_god)
{
    var other.temp_id = god_add_item_ingredient(items_ingredient.coffee,other.coffee_subtype[other.slot])
}

//1.1 update variables of coffee and coffeeDispenser
temp_id.parent = id;
coffee_id[slot] = temp_id;

//2. update coffee_n
coffee_n[slot] -= 1;
