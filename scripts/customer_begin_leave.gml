//customer_begin_leave()


// 1. Find Exit Position
exit_id = customer_find_exit();
var temp_x = o_god.tile_size/2
var temp_y = o_god.tile_size/2

// 2. Move To Exit
moveTo_speed(exit_id.x+temp_x,exit_id.y+temp_y, o_god.customer_speed * global.dt_steady)
moving = 1;
status = 5;
