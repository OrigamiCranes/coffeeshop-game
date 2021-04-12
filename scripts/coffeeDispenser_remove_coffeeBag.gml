///coffeeDispenser_remove_coffeeBag(grinder_slot)

var slot = argument[0];

//1. CHECK IF SLOT IS EMPTY
if(coffeeBag_id[slot] == 0)
{
    var output = 0;
    return output;
}

//1.1 CHECK IF ACTIVE
else if(active[slot] == 1)
{
    var output = 0;
    return output;
}

//2. IF NOT EMPTY, REMOVE THE COFFEE
else
{
    coffeeBag_id[slot] = 0;
    
    var output = 1;
    return output;

}
