//god_spawn_customer_passerby()

//1. Spawn Customer
var spawned_customer = instance_create(customer_spawn_x+(o_god.tile_size/2),customer_spawn_y+(o_god.tile_size/2),o_customer)

//2. Pass on Variables
with(spawned_customer)
{   
    passerby = 1;
    customer_spawn_route()
    
}

//3. Add to Customer List
ds_list_add(active_customers,spawned_customer);


