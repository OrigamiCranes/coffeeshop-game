///coffeeDispenser_generate_coffee(slot)
//generates new coffee, disposing of the coffeeBag and updating the coffe_n
var slot = argument[0];

//1. GENERATE COFFEE
// create grinded coffeee based on previous ingredient + machine quality


//1.1 Generate Coffee
//GENERATE THE AMOUNT OF COFFEE
coffee_n[slot] += grind_multiplier;
if(coffee_n[slot] > coffee_max)
{
    coffee_n[slot] = coffee_max
}

//dispense a coffee into the pickup slot
coffeeDispenser_dispense_coffee(slot)

//2. Remove Coffee Bag
with(o_god)
{
    god_remove_item_ingredient(coffeeBag_id[slot])
}

with(coffeeBag_id[slot])
{
    instance_destroy(self);
}

coffeeBag_id[slot] = 0;
