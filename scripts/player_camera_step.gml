
// UPDATE CAMERA VELOCITY
if(camera_sweep == 1)
{
    player_camera_sweep_step();
}
else
{

if(player_state == 1)
{
    player_camera_livemode_step();
}

// 1. CHECK FOR MOVEMENT INPUTS
else if(action_move_alarm == 1)
{
    //1.1 Route depending on direction
    //1.1.1 X AXIS
    if(action_move_left)
    {
        camera_velocity_x -= camera_accel;
    }
    
    else if(action_move_right)
    {
        camera_velocity_x += camera_accel;
    }
    
    //1.1.2 Y AXIS
    if(action_move_up)
    {
        camera_velocity_y -= camera_accel;
    }
    
    else if(action_move_down)
    {  
        camera_velocity_y += camera_accel;
    }
    
    
    //1.2 CHECK TO SEE IF AT MAX SPEED
    //1.2.1 X axis
    if(abs(camera_velocity_x) > camera_maxSpeed)
    {
        if(camera_velocity_x > 0)
        {
            camera_velocity_x = camera_maxSpeed;
        }
        
        else if(camera_velocity_x < 0)
        {
            camera_velocity_x = -camera_maxSpeed;
        }
    }
    
    //1.2.2 Y axis
    if(abs(camera_velocity_y) > camera_maxSpeed)
    {
        if(camera_velocity_y > 0)
        {
            camera_velocity_y = camera_maxSpeed;
        }
        
        else if(camera_velocity_y < 0)
        {
            camera_velocity_y = -camera_maxSpeed;
        }
    }
    

}
//2. Else slowdown the velocity
if(camera_velocity_x != 0 || camera_velocity_y != 0)
{
    //2.1 X AXIS
    if(camera_velocity_x >= 0 && action_move_right == 0)
    {
        camera_velocity_x -= camera_deaccel;
        
        if(camera_velocity_x <= 0)
        {
            camera_velocity_x = 0;
        }
    }
    else if(camera_velocity_x <= 0 && action_move_left == 0)
    {
        camera_velocity_x += camera_deaccel;
        
        if(camera_velocity_x >= 0)
        {
            camera_velocity_x = 0;
        }
    }
    
    //2.2 Y AXIS
    if(camera_velocity_y >= 0 && action_move_down == 0)
    {
        camera_velocity_y -= camera_deaccel;
        
        if(camera_velocity_y <= 0)
        {
            camera_velocity_y = 0;
        }
    }
    else if(camera_velocity_y <= 0 && action_move_up == 0)
    {
        camera_velocity_y += camera_deaccel;
        
        if(camera_velocity_y >= 0)
        {
            camera_velocity_y = 0;
        }
    }
}

//3. UPDATE CAMERA POSITION
if(camera_velocity_x != 0 || camera_velocity_y != 0)
{
    
    //3.1 CHECK TO SEE IF GOING DIAGONALLY AND APPLY SLOWDOWN
    if(camera_velocity_x != 0 && camera_velocity_y != 0 && 1==0)
    {
        camera_x_new = camera_velocity_x * 0.707;
        camera_y_new = camera_velocity_y * 0.707;
    }
    //3.2 Else its normal addition;
    else
    {
        camera_x_new = camera_velocity_x;
        camera_y_new = camera_velocity_y;
    }
    
    //3.3 Apply the new camera position;
    view_xview += camera_x_new;
    view_yview += camera_y_new;
    
}
}
