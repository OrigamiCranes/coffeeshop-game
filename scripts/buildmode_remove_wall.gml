///buildmode_remove_wall(x_tile,y_tile)


//1. add to grid
room_build_grid[argument[0],argument[1]] = 0;

//2. update mp grid
mp_grid_clear_cell(global.grid, argument[0], argument[1])

