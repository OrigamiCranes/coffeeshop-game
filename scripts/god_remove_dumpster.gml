//god_remove_dumpster(id)

var val = ds_list_find_index(list_dumpster, argument[0]);
ds_list_delete(list_dumpster, val);

//remove from grid
var id_temp = argument[0];
var x_temp = floor(id_temp.x/tile_size)
var y_temp = floor(id_temp.y/tile_size)

global.room_object_grid[x_temp,y_temp] = 0;

mp_grid_clear_cell(global.grid, x_temp, y_temp);
