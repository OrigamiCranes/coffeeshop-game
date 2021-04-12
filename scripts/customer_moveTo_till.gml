///customer_moveTo_till(till_id)

till_id = argument[0];
queue_position = -1;
moveTo_speed(till_id.customer_spot_x,till_id.customer_spot_y, o_god.customer_speed * global.dt_steady);
moving = 1;
status = 3;
