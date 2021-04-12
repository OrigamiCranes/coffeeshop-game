
camera_velocity_x = 0;
camera_velocity_y = 0;

camera_x_new = 0;
camera_y_new = 0;

camera_maxSpeed = o_god.tile_size * 0.2;

camera_accel = camera_maxSpeed * 0.01;
camera_deaccel = camera_maxSpeed * 0.02;


camera_sweep = 0;
camera_sweep_timer = 0;
camera_sweep_alarm = 1.5;
camera_sweep_percent = camera_sweep_timer/camera_sweep_alarm;

camera_sweep_end_x = x;
camera_sweep_end_y = y;

camera_sweep_start_x = 0;
camera_sweep_start_y = 0;


