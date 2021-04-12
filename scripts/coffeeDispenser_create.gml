

//ADD TO LIST
with(o_god)
{
    //god_add_coffeeDispenser(other.id)
}


depth_bias = 0;
depth_update();

grind_timer = 0;
grind_alarm = 1;

grind_multiplier = 10;

coffee_current = 0;
coffee_max = grind_multiplier;

//the gui inventory object id 
inventory_id = 0;

//--SLOTS--
slot_amount = 1; 
slot_max = 4;

// 1. Go through number of coffeeDispenser Slots, 
// and add a coffeeBag, coffeeGround, etc. id variable 
var n = 0;
while(n < slot_max)
{
    
    //
    coffeeBag_id[n] = 0;
    coffee_id[n] = 0;
    
    //current number of coffees left
    coffee_n[n] = 0;
    
    //current coffee subtype
    coffee_subtype[n] = 0;
    
    active[n] = 0;
    timer[n] = 0;
    
    n++;
}

