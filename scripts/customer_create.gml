moving = 0;
till_id = 0;

table_id = 0;
seat_id = 0;

exit_id = 0;

queue_position = -1;
queue_bias_x = round(0.05*(irandom(o_god.tile_size)-(o_god.tile_size)))

//alarm
timer_default = 0;
alarm_default = 0;

queue_timer = 0;
queue_alarm = 4;
queue_hp = 4;

// 0 = null
// 1 = moving to queue
// 2 = in queue
// 3 = moving to till
// 4 = at till
// 5 = leaving
// 6 = going to table/seat
// 7 = at table
status = 0;

//if staying in or taking out
takeout = 0;

//if a passerby
passerby = 0;





depth_bias = 0;
depth_update();
