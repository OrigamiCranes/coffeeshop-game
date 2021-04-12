//god_add_sink(id)
//add the sink to the list
ds_list_add(list_sink,argument[0]);

//add table to room_object grid
var id_temp = argument[0];
var x_temp = floor(id_temp.x/tile_size)
var y_temp = floor(id_temp.y/tile_size)

//add to grid
global.room_object_grid[x_temp,y_temp] = id_temp;

mp_grid_add_cell(global.grid, x_temp, y_temp);
