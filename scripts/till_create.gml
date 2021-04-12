customer_current = 0;

//till_status
// 0 = null
// 1 = no customer
// 2 = waiting for customer
// 3 = serving customer
// 4 = customer leaving

till_status = 0;
depth_bias = 0;
customer_spot_x = x+(o_god.tile_size/2);
customer_spot_y = y - o_god.tile_size + (o_god.tile_size/2);




till_status = 1;

//
with(o_god)
{
    god_add_till(other.id)
}


depth_update();
