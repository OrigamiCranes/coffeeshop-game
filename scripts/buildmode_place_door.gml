///buildmode_place_door(x_tile,y_tile)


//1. add to grid
global.room_wall_grid[argument[0],argument[1]] = s_wall_tile;
global.room_wall_grid[argument[0]+1,argument[1]] = 0;
global.room_wall_grid[argument[0]+2,argument[1]] = s_wall_tile;

//2. update mp grid
mp_grid_add_cell(global.grid, argument[0], argument[1])
mp_grid_add_cell(global.grid, argument[0]+2, argument[1])
mp_grid_clear_cell(global.grid, argument[0]+1, argument[1])


