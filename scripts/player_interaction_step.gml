///player_step_check_interaction
//FLUSH CHECK_ID
check_id = 0;

//1. FIND WHICH COORD TO CHECK
switch(facing_direction)
{
    case 0:
    {
        check_coord[0] = current_coord[0] + 1;
        check_coord[1] = current_coord[1];
        break;
    }
    
    case 1:
    {
        check_coord[0] = current_coord[0];
        check_coord[1] = current_coord[1] - 1;
        break;
    }
    
    case 2:
    {
        check_coord[0] = current_coord[0] - 1;
        check_coord[1] = current_coord[1];
        break;
    }
    
    case 3:
    {
        check_coord[0] = current_coord[0];
        check_coord[1] = current_coord[1] + 1;
        break;
    }
}

//Check if any overload
//if no overload GET ID
if(check_coord[0] > -1 && check_coord[0] <  o_god.hcells)
{
    if(check_coord[1] > -1 && check_coord[1] < o_god.vcells)
    {
    
        check_id = global.room_object_grid[check_coord[0],check_coord[1]];
 
    }
}



