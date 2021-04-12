///player_camera_sweep(x,y)


//GET START END POSITIONS
camera_sweep_end_x = argument[0];
camera_sweep_end_y = argument[1];

camera_sweep_start_x = view_xview;
camera_sweep_start_y = view_yview;

//SET THE SWEEP BOOL
camera_sweep = 1;

//CALCULATE THE ACCEL X/Y

//1. calc direction
camera_distance_x = camera_sweep_end_x - camera_sweep_start_x;
camera_distance_y = camera_sweep_end_y - camera_sweep_start_y;

//2. CALCULATE VELOCITY TO POS


