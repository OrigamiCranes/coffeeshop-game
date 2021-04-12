///expressoMaker_add_expresso(coffeeHolder)

var n = argument[0];
var temp_id = 0;

//1. generate new espresso
//create new espresso based on previous ingredients + machine quality

//1.1 Generate one/two espresso
var m = 0;
while(m < 2)
{
    if(coffeeHolder_cup[n,m] == 1)
    {
    
        //remove espressoCup
        god_remove_item_espressoCup(coffeeHolder_cup_id[n,m])
        coffeeHolder_cup_id[n,m] = 0;
        coffeeHolder_cup[n,m] = 0;
        
        with(o_god)
        {
            //1 = espresso
            other.temp_id = god_add_item_drink(item_drink.espresso);
        }
        
        coffeeHolder_espresso_id[n,m] = temp_id;
        coffeeHolder_espresso[n,m] = 1;
        
        //1.2 Calculate Quality etc.
        temp_id.parent = id;
        temp_id.quality = 1;
        temp_id.grade = 1;
        
        
        
        
    }

m++;
}

//2. remove coffee
god_remove_item_coffee(coffeeHolder_coffee_id[n])
coffeeHolder_coffee_id[n] = 0;
coffeeHolder_coffee[n] = 0;



