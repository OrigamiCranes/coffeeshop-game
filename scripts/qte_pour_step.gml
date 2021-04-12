//if event start has not been triggered yet
if(qte_status == 0)
{
    
}

else if(qte_status == 1)
{
    
    //if pour key was released then the game progresses
    if(action_shoot_key == 0)
    {
    
        //end the qte
        qte_status_end();
    }
    
    //else pour/update
    else
    {
        //update timer/relative amount
        qte_timer += global.dt_steady;
        qte_amount = qte_timer/qte_over_fail;
        
        if(qte_amount > 1)
        {
            qte_amount = 1;
        }
        
        //update gui positions
    }
}

else if(qte_status == 2)
{

    //update timer
    qte_timer += global.dt_steady;
    
    //if its time to end, END
    if(qte_timer >= qte_alarm_end)
    {
        qte_status_complete()
    }
    else
    {
    
        //calculate the gui elements positions
        
    }
    
        

      


}
    
    
