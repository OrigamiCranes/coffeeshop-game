///spawner_hour_update

//1. Calculate the next number of spawns per hour of Customers
spawner_customer_spawnGauss = gaussianDistribution(spawner_customer_spawnRate[clock_current_hour],spawner_customer_deviation);

spawner_customer_currentH = ceil(spawner_customer_spawnGauss * u_customer_perH);


//--CALCULATE TIME TO SPAWN CUSTOMERS--
var n=0; var time_remaining = 60; var time_average = 0; var temp=0; var time_deviation = 0;
var temp_custnumber = spawner_customer_currentH; var temp_timeCount = 0; var temp_sign = 1;
while(n<spawner_customer_currentH)
{
    //first calculate the average time needed to get each customer in on the time remaining
    time_average = floor((time_remaining / temp_custnumber));
    
    //then add a deviation for randomness
    time_deviation = floor(time_average * 0.5);
    
    //randomise if its positive or negative
    temp_sign = irandom(1);
    if(temp_sign == 0)
    {
        temp_sign = -1;
    }
    //calculate the time to spawn
    temp = (temp_sign * irandom(time_deviation)) + time_average;
    temp_timeCount += temp;
    
    //add to array
    spawner_customer_spawn_time[n] = temp_timeCount;
    temp_custnumber -= 1;
    time_remaining -= temp;   
    n=n+1;
}

spawner_current_n = 0;

