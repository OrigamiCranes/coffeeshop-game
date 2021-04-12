///expressoMaker_step()

//check if active
var n = 0;
while(n < coffeeHolder_amount)
{

    //go through each coffeHolder checking if active
    if(coffeeHolder_active[n] == 1)
    {
    
        //GO THROUGH coffeeHOLDERS updating the timers
        coffeeHolder_timer[n] += global.dt_steady;
        
        //calculate gui animation positions
        
        
        //Check if complete
        if(coffeeHolder_timer[n] >= default_alarm)
        {
            coffeeHolder_timer[n] = 0;
            expressoMaker_finish_expresso(n);
        }
    
        
        
        
    }
    n++;
}
