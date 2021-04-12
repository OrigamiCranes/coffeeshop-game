
//1. CHECK FOR SCROLL WHEEL TO UPDATE CURRENT SELECTED ITEM
var trigger = 0;
if(action_mousewheel_up == 1)
{
    buymode_current_n += 1;
    if(buymode_current_n >= o_god.buymode_list_length)
    {   
        buymode_current_n = 0;
    }
    
    trigger = 1;
}

else if(action_mousewheel_down == 1)
{
    buymode_current_n -= 1;
    if(buymode_current_n < 0)
    {   
        buymode_current_n = o_god.buymode_list_length-1;
    }
    
    trigger = 1;
}


//2. UPDATE CURRENT SELECTION VARIABLES
if(trigger == 1)
{
    var n =0;
    while(n < array_length_2d(o_god.buymode_list,1))
    {
        buymode_current[n] = o_god.buymode_list[buymode_current_n,n];
        n++
    }

}
