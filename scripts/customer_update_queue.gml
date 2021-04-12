//customer_update_queue
//move the customer to the next position in the queue
queue_position -= 1;
if(queue_position < 0)
{
    queue_position = 0;
}

var temp_y = queue_position * o_god.tile_size *-1;

moveTo_speed(o_customer_queue.x+(o_god.tile_size/2) + queue_bias_x,o_customer_queue.y+temp_y+(o_god.tile_size/2), o_god.customer_speed * global.dt_steady);
moving = 1;
