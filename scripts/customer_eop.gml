moving = 0;

// if moving to queue, make at queue
if(status = 1)
{
    status = 2;
}

// if moving to till, make at till.
else if(status = 3)
{
    status = 4;
    till_id.till_status = 3;
}

// if leaving, now exit
else if(status = 5)
{
    
    customer_begin_exit();
}

//if moving to table/seat, make at table.
// roll to see how long table stay will be
else if(status = 6)
{
    status = 7;
    customer_begin_atTable();
    
}
