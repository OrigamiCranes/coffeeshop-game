//clock_alarms()

if(clock_alarm_hour = 1)
{

// 1. Reset Alarm
clock_alarm_hour = 0;

// 2. Check Day Alarm    
if(clock_alarm_day == 1)
{
    clock_alarm_day = 0;
    
    // 3. Check Month Alarm
    if(clock_alarm_month = 1)
    {
        clock_alarm_month = 0;
        
        // 4. Check Year Alarm
        if(clock_alarm_year = 1)
        {
            clock_alarm_year = 0;
            
            clock_alarms_year();
        }
        
        clock_alarms_month();
    }
    
    clock_alarms_day();
    
}

// 1.1 Run Alarms for Hour    
clock_alarms_hour();

}

// 1.2 Run Alarm for mins
clock_alarms_mins();
