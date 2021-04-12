camera_sweep_timer += global.dt_steady;
camera_sweep_percent = camera_sweep_timer/camera_sweep_alarm;

view_xview = camera_sweep_start_x + camera_distance_x*camera_sweep_percent;
view_yview = camera_sweep_start_y + camera_distance_y*camera_sweep_percent;

//IF ITS OVER
if(camera_sweep_timer >= camera_sweep_alarm)
{
    camera_sweep_timer = 0;
    view_xview = camera_sweep_end_x;
    view_yview = camera_sweep_end_y;   
    camera_sweep = 0;
}
