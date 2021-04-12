//money_add(amount)

with(o_god)
{
if(money_update == 0)
{
    
    //1. Update Current Money
    money_amount = argument[0];
    money_previous = money_current;
    money_current = money_current + argument[0];
    
    //2. Reset Money Animation Timer
    money_timer = 0;
    money_update = 1;
    
    //3. Spawn +amount animation
}

//else if already adding money
else if(money_update == 1)
{
    
    //1. Update Current Money
    money_previous = money_display;
    money_amount = (money_current - money_previous) + argument[0];
    
    money_current = money_current + argument[0];
    
    //2. Reset Money Animation Timer
    money_timer = 0;
    money_update = 1;
    
    //3. Spawn +amount animation
    
}
//if minusing money
else if(money_update == 2)
{
    //1. Update Current Money
    money_previous = money_display;
    money_amount = (money_current - money_previous) + argument[0];
    
    money_current = money_current + argument[0];
        
    //2. Reset Money Animation Timer
    //if a negtaive number
    if(money_amount < 0)
    {
        
        money_amount = abs(money_amount)
        money_update = 2;
    }
    else
    {
            money_update = 1;
    }
    
    money_timer = 0;
    //3. Spawn +amount animation
}
}
