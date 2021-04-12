///money_step()


//1. UPDATE MONEY_DISPLAY
//if adding money
if(money_update != 0)
{
if(money_update = 1)
{
    
    money_timer += global.dt_steady;
    
    
    if(money_timer >= money_alarm)
    {
        money_display = money_current;
        money_update = 0;
    }
    
    else
    {
        //calculate display value
        money_display = floor(money_previous + (money_amount*(money_timer/money_alarm)));
    }
}

//if removing money
else if(money_update == 2)
{
    money_timer += global.dt_steady;
    
    if(money_timer >= money_alarm)
    {
        money_display = money_current;
        money_update = 0;
    }
    
    else
    {
        //calculate display value
        money_display = floor(money_previous - (money_amount*(money_timer/money_alarm)));
    }
    

    
}


//1.1 CALCULATE GUI NUMBERS
money_gui_updateBalance();
  
}
