//if spawned in left
if(x < room_width/2)
{
    var desired_exit = 0;   
}

//if spawned in right
else if(x > room_width/2)
{
    var desired_exit = 1
}

var n_max = ds_list_size(o_god.list_customerExit);
var n = 0;
while(n < n_max)
{
    var temp_id = o_god.list_customerExit[| n];
    
    if(temp_id.x > room_width/2 && desired_exit == 1)
    {
        exit_id = temp_id;
        break;  
    }
    else if(temp_id.x < room_width/2 && desired_exit == 0)
    {
        exit_id = temp_id;
        break;
    }
     
    n++;
}

//NOW MOVE THERE 
var temp_x = o_god.tile_size/2
var temp_y = o_god.tile_size/2

// 2. Move To Exit
moveTo_speed(exit_id.x+temp_x,exit_id.y+temp_y, o_god.customer_speed * global.dt_steady)
moving = 1;
status = 5;
