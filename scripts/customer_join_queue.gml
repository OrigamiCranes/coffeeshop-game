///customer_join_queue()
//1. Add to Queue
queue_position = ds_list_size(o_god.queue_customers);
ds_list_add(o_god.queue_customers,id);

//1.1 calculate q pos.
var temp_y = o_god.tile_size * queue_position * -1;

//2. MoveTo Queue
//--todo move to queue position--
moveTo_speed(o_customer_queue.x+(o_god.tile_size/2)+queue_bias_x,o_customer_queue.y+temp_y+(o_god.tile_size/2), o_god.customer_speed * global.dt_steady);
moving = 1;
status = 1;
