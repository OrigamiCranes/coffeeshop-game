#define clock_step
// 1. update the timer based on dt_steady 
clock_realTime_count += global.dt_steady;


//2. Check if enough time has passed to update clock
if(clock_realTime_count >= clock_realTime_ratio)
{
    clock_realTime_count = 0;
    clock_current_mins += 1;
    
    clock_current_day_time += 1;
    
    
    if(clock_current_mins >= 60)
    {
        // reset mins, add an hour
        clock_current_mins = 0;
        clock_current_hour += 1;
        
        //set hour alarm to go off
        clock_alarm_hour = 1;
        
        // check if not new day
        if(clock_current_hour >= 24)
        {
            
            clock_current_day_time = 0;
            
            clock_current_year_time = 1;
            
            clock_current_hour = 0;
            clock_current_day += 1;
            
            clock_alarm_day = 1;
                       
            
            if(clock_current_day >= 28)
            {
                //draw_month_sprite / draw_year_sprite applied inside
                clock_step_monthChanger();
                
            }
            
            clock_draw_day_sprite[0] = floor(clock_current_day / 10);
            clock_draw_day_sprite[1] = clock_current_day mod 10;
                           
        }
        
        // update gui clock sprites
        clock_draw_hour_sprite[0] = floor(clock_current_hour / 10);
        clock_draw_hour_sprite[1] = clock_current_hour mod 10;
        
    }
    
    //3.1 Convert mins to numbers
    clock_draw_mins_sprite[0] = floor(clock_current_mins / 10);
    clock_draw_mins_sprite[1] = clock_current_mins mod 10;
    
}

//check alarms
clock_alarms();

#define clock_step_monthChanger
//clock_step_monthChanger()
//discovers what month it is, and if its time to change

var month_change = 0;

// 1. CHECK THE MONTH AND UPDATE IF ITS PAST THE AMOUNT OF DAYS
if(clock_current_month == 1 || clock_current_month == 3 || clock_current_month == 5 || clock_current_month == 7 || clock_current_month == 8|| clock_current_month == 10 || clock_current_month == 12)
{
    if(clock_current_day >= 32)
    {
       month_change = 1;
    }
}
 
if(clock_current_month = 2)
{
    //if leap year
    if(clock_current_year mod 4 == 0)
    {
        if(clock_current_day > 28)
        {
            month_change = 1;
        }
    }
    else
    {
        month_change = 1;
    }
}

if(clock_current_month == 4 || clock_current_month == 6 || clock_current_month == 9 || clock_current_month == 11)
{
     
    if(clock_current_day >= 31)
    {
        month_change = 1;
    }
}  


// END. APPLY THE CHANGE IF NECCESSARY
if(month_change = 1)
{

        //if new year
        if(clock_current_month == 12)
        {
            clock_current_year += 1;
            clock_current_month = 1;
            clock_current_day = 1;
            
            clock_current_year_time = 0;
            
            clock_alarm_year = 1;
            
            clock_draw_year_sprite[0] = floor(clock_current_year / 1000);
            clock_draw_year_sprite[1] = floor((clock_current_year/100) mod 10);
            clock_draw_year_sprite[2] = floor((clock_current_year / 10) mod 10);
            clock_draw_year_sprite[3] = clock_current_year mod 10
        }
        else
        {
            clock_current_day = 1;
            clock_current_month +=1;
             
        }
        
        //update clock_month_days variable
        clock_month_days_update();
        
        clock_alarm_month = 1; 
        
        clock_draw_month_sprite[0] = floor(clock_current_month / 10);
        clock_draw_month_sprite[1] = clock_current_month mod 10;
 }

#define clock_month_days_update
if(clock_current_month == 1 || clock_current_month == 3 || clock_current_month == 5 || clock_current_month == 7 || clock_current_month == 8|| clock_current_month == 10 || clock_current_month == 12)
{
    if(clock_current_day >= 32)
    {
       clock_month_days = 31;
    }
}
 
if(clock_current_month = 2)
{
    //if leap year
    if(clock_current_year mod 4 == 0)
    {
        
          clock_month_days = 29;
        
    }
    else
    {
        clock_month_days = 28;
    }
}

if(clock_current_month == 4 || clock_current_month == 6 || clock_current_month == 9 || clock_current_month == 11)
{
     
    if(clock_current_day >= 31)
    {
        clock_month_days = 30;
    }
}  