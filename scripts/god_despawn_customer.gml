///god_despawn_customer(customer_id)

//remove customer from list
var val = ds_list_find_index(active_customers,argument[0])
ds_list_delete(active_customers,val);
