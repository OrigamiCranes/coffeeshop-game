///buymode_check_gridspace(ix,iy)

var ix = argument[0];
var iy = argument[1];


//1. Check if gridspace is free
if(instance_position(ix*tile_size,iy*tile_size, all) || global.room_wall_grid[ix,iy] != 0)
{
    return 0;
}
else
{
    return 1;
}

