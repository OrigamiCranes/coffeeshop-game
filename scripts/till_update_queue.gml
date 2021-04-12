

//2. Go through queue updating customers
var n = 0;
while(n < ds_list_size(o_god.queue_customers))
{
    var val = ds_list_find_value(o_god.queue_customers,n);
    
    with(val)
    {
        customer_update_queue()
    }
    
    n = n + 1;
}
