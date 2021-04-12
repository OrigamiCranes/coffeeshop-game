//customer_step_queue
//when in queue, this step is done

queue_timer += global.dt_steady;

if(queue_timer >= queue_alarm)
{

    //reset timer
    queue_timer = 0;
    
    //probablility roll       
    //CHANCE = time_waiting * queue_position_multiplier
    //queue_HP -= 1 + chance;
    
    queue_hp -= 1;
    //if customer is out of patience
    //then leave
    if(queue_hp <= 0)
    {
        customer_leave_queue()
    }
    
}






