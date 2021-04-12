//coffeeDispenser_remove_coffee(slot)

var slot = argument[0];
var output = 0;

//1. ERROR CHECKING
//check if slot isnt empty
if(coffee_id[slot] == 0)
{
    return output;
}


//2. ELSE REMOVE THE COFFEE
else
{
    //remove the old coffee
    coffee_id[slot] = 0;
    
    
    // DISPENSE A NEW COFFEE
    coffeeDispenser_dispense_coffee(slot);

    
    //return a positive
    output = 1;
    return output;
}
