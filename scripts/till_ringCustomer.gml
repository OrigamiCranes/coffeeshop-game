//till_ringCustomer
//call next customer from queue.

// 1. Check if anyone in queue
if(ds_list_empty(o_god.queue_customers) != 1 && till_status = 1)
{

    // 2. Grab next customer in queue
    customer_current = ds_list_find_value(o_god.queue_customers,0);
    
    // 2.1 Delete Customer from queue
    ds_list_delete(o_god.queue_customers,0);
    
    // 2.2 Update Customer to move   
    with(customer_current)
    {
        customer_moveTo_till(other.id)
    }
    
    // 2.2.1 UPDATE QUEUE POSITIONS
    till_update_queue();
    
    // 2.3 Update Till Status
    // 2 == waiting for customer
    till_status = 2;

}
