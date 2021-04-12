///1. Go through grid array drawing floor & walls etc.
var n = 0;
var m = 0;
while(n < hcells)
{
    
    while(m < vcells)
    {
    
        if(global.room_floor_grid[n,m] != 0)
        {
            depth = -(m*tile_size) + depth_floor;
            draw_sprite(global.room_floor_grid[n,m],global.room_floor_grid_subsprite[n,m],n*tile_size,m*tile_size) 
        }
        
        if(global.room_wall_grid[n,m] != 0)
        {
            depth = -(m*tile_size) + depth_wall;
            draw_sprite(global.room_wall_grid[n,m],global.room_wall_grid_subsprite[n,m],n*tile_size,m*tile_size)
        }
        

        
        m++;
    }
    
    m = 0;
    n++;
}
