//coffeeDispenser_start_grind(grinder_slot)

var slot = argument[0];
var output = 0;

//1. ERROR CHECK
//1.1 CHECK IF THERES COFFEEBAG
if(coffeeBag_id[slot] == 0)
{
    return output;
}

//1.2 CHECK IF THERES ANY COFFEE LEFT
else if(coffee_n[slot] != 0)
{
    return output;
}

//2. ELSE START
else
{
    
    active[slot] = 1;
    timer[slot] = 0;
    output = 1;
    return output;
    
}
