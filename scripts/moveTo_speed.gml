//moveTo_speed(desired_x, desired_y, speed)

var path_temp = path_add();
mp_grid_path(global.grid, path_temp, x, y, argument0, argument1, 1);
path_start(path_temp, argument2, path_action_stop, false); 

return path_temp;
