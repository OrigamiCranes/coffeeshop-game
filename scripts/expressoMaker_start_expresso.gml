///expressoMaker_start_expresso(expressoCoffeeHolder_number)

var n = argument[0];

//1. Check if theres coffee
if(coffeeHolder_coffee[n] == 1)
{

//2. Check if theres Atleast a Cup
    if(coffeeHolder_cup[n] == 1 || coffeeHolder_cup[n+1] == 1)
    {
        //3. If Both True START
        coffeeHolder_active[n] = 1;
        coffeeHolder_timer[n] = 0;
        coffeeHolder_complete[n] = 0;
        var output = 1;
        return output;
    }


//3.1 Else THROW A 0 BACK
}

var output = 0;
return output;

