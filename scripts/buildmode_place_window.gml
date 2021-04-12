///buildmode_place_window(x_tile,y_tile)


//1. add to grid
global.room_wall_grid[argument[0],argument[1]] = s_window;

//2. update mp grid
mp_grid_add_cell(global.grid, argument[0], argument[1])


