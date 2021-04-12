
//1. get mouse position
var current_mouse_x = mouse_x;
var current_mouse_y = mouse_y;

//1.2 Get the Grid Tile
buymode_current_tile_x = floor(current_mouse_x/o_god.tile_size);
buymode_current_tile_y = floor(current_mouse_y/o_god.tile_size);

buymode_current_x = buymode_current_tile_x * o_god.tile_size;
buymode_current_y = buymode_current_tile_y * o_god.tile_size;

//2. CHECK IF THERES CURRENTLY AN OBJECT IN THE WAY

//2.1 IF IS, SET AS RED


 
