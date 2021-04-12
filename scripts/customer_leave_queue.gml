///customer_leave_queue()
//remove customer from queue,
ds_list_delete(o_god.queue_customers,queue_position);

//make customer leave
customer_begin_leave();

//update queue.
var n = queue_position;
while(n < ds_list_size(o_god.queue_customers))
{
    var val = ds_list_find_value(o_god.queue_customers,n);
    
    with(val)
    {
        customer_update_queue()
    }
    
    n = n + 1;
}

