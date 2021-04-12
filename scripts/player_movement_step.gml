if(action_move_alarm == 1)
{

// reset variables
collision_check = 0;
collision_check = 0;
x_new = x;
y_new = y;

if(action_move_left)
{
    //check to see if gonna goto new tile
    x_new = x - movement_speed * global.dt_steady;
    facing_direction = 2;
}

else if(action_move_right)
{
    x_new  = x + movement_speed * global.dt_steady;
    facing_direction = 0;
} 

if(action_move_up)
{
    y_new = y - movement_speed * global.dt_steady;
    facing_direction = 1;
}

else if(action_move_down)
{
    y_new = y +  movement_speed * global.dt_steady;
    facing_direction = 3;
}


//if movement in both axes
if(x_new != x && y_new != y)
{
    //half the distance
    y_new = y+ ((y_new-y)*0.707);
    x_new = x+ ((x_new-x)*0.707);
    
    

}

// 2. FIND TILE COORD
//generate a bunch of collision coords

//2.1 check if any movement happened
if(x_new != x || y_new != y)
{
    
    //2.1.1 UPDATE COLLISION  CHECKS
    //update collision mesh
    var n = 0;
    while(n < array_height_2d(collision))
    {
        collision_check[n,0] = floor((x_new+collision[n,0])/o_god.tile_size);
        collision_check[n,1] = floor((y_new+collision[n,1])/o_god.tile_size);
        n++;
    }

  
// 3. CHECK COLLISIONS
n = 0; var temp_alarm = 0;
while(n < array_height_2d(collision_check))
{
    
    //if there is collision
    if(mp_grid_get_cell(global.grid,collision_check[n,0], collision_check[n,1]) == -1)
    {
           temp_alarm = 1;
           break;
    }

    n++;
} 

//if there is no collision
if(temp_alarm == 0)
{
    x = x_new;
    x_temp = collision_check[8,0] - current_coord[0];
    //update the current_coord
    current_coord[0] = current_coord[0] + x_temp;
            
    y = y_new;
            
    //update the current_coord
    y_temp = collision_check[8,1] - current_coord[1]
    current_coord[1] = current_coord[1] + y_temp;

}
    
  

/*
//if its a crossover
if(x_new != x)
{
    
    
       
    //if the new x is bigger than current
    if(x_new > x)
    {
    

        //conver to tiles
        //var x_temp = floor((x_new+o_god.tile_size_half) / o_god.tile_size)
    }
    
    else if(x_new < x)
    {
        var x_temp = floor((x_new-o_god.tile_size_half) / o_god.tile_size)
    }
       
    
       
}

if(y_new != y)
{   
    
    
    
    //if its a crossover
    if(y_new > y)
    {
    
        var y_temp = floor((y_new+o_god.tile_size_half) / o_god.tile_size)
    }
    
    else if(y_new < y)
    {
        var y_temp = floor((y_new-o_god.tile_size_half) / o_god.tile_size)
    }
    
   
}



//3. CHECK FOR COLLISION
//if both new



if(y_new != y && x_new != x)
{
    //check for new tile
    if( x_temp != current_coord[0] || y_temp != current_coord[1])
    {
    //check to see if its gonna have collission
        if(mp_grid_get_cell(global.grid,x_temp, y_temp) == 0)
        {

            x = x_new;
            x_temp = x_temp - current_coord[0];
            //update the current_coord
            current_coord[0] = current_coord[0] + x_temp;
            
                        y = y_new;
            
            //update the current_coord
            y_temp = y_temp - current_coord[1]
            current_coord[1] = current_coord[1] + y_temp;
         
        }
    }
    else
    {
        x = x_new;
        y = y_new;
    }
}

//if just x is new
else if(x_new != x)
{
    if( x_temp != current_coord[0])
    {
        

        //check to see if its gonna have collission
        if(mp_grid_get_cell(global.grid,x_temp, current_coord[1]) == 0)
        {
            x = x_new;
            
            x_temp = x_temp - current_coord[0];
            //update the current_coord
            current_coord[0] = current_coord[0] + x_temp;
         
        }
    }
    //if its normal
    else
    {
        x = x_new;
    }
}
//if just y is new
else if(y_new != y)
{

    if( y_temp != current_coord[1])
    {
        
        //check to see if its gonna have collission
        if(mp_grid_get_cell(global.grid,current_coord[0], y_temp) == 0)
        {
            y = y_new;
            
            //update the current_coord
            y_temp = y_temp - current_coord[1]
            current_coord[1] = current_coord[1] + y_temp;
         
        }
    }
    //if its normal
    else
    {
        y = y_new;
    }


}

*/
}
}


