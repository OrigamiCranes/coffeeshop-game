#define buymode_create
//--0. USER VARIABLES--
buymode_grid_x_start = 0;
buymode_grid_x_end = 0;
buymode_grid_y_start = 0;
buymode_grid_y_end = 0;

//--1. DEFINE VARIABLES--

//define buymode_grid area (inside the store essentially)
// 0 = disallowed
// 1 = allowed
buymode_grid[0,0] = 0;

buymode_create_grid();




//2. CREATE THE LIST OF OBJECTS
buymode_create_list();

table_cost = 150;
seat_cost = 50;
counter_cost = 25;

#define buymode_create_grid
//buymode_create_grid()

///
#define buymode_create_list

//name, sprite_index, price
/*
var n = 0;
buymode_list[n,0] = "Name";
buymode_list[n,1] = sprite_index;
buymode_list[n,2] = price;
*/

//1. TABLE + CHAIR
var n = 0;
buymode_list[n,0] = "Table";
buymode_list[n,1] = s_table;
buymode_list[n,2] = 150;
buymode_list[n,3] = o_table;

//2. CHAIR
n += 1;
buymode_list[n,0] = "Chair";
buymode_list[n,1] = s_seat;
buymode_list[n,2] = 50;
buymode_list[n,3] = o_seat;

//3. COUNTER
n += 1;
buymode_list[n,0] = "Greasemonkey Basic Counter";
buymode_list[n,1] = spr_counter;
buymode_list[n,2] = 25;
buymode_list[n,3] = o_counter;

//3. SINK
n += 1;
buymode_list[n,0] = "Superb Sink";
buymode_list[n,1] = s_sink;
buymode_list[n,2] = 200;
buymode_list[n,3] = o_sink;

//4. EXPRESSOMAKER
n += 1;
buymode_list[n,0] = "EXPRESS-oh! 2004 Edition";
buymode_list[n,1] = s_expressoMaker;
buymode_list[n,2] = 300;
buymode_list[n,3] = o_expressoMaker;

//5. TILL
n += 1;
buymode_list[n,0] = "Till-o-matic";
buymode_list[n,1] = s_till;
buymode_list[n,2] = 250;
buymode_list[n,3] = o_till;

//6. TRASHCAN
n += 1;
buymode_list[n,0] = "Avast ye Trash!";
buymode_list[n,1] = s_trashcan;
buymode_list[n,2] = 20;
buymode_list[n,3] = o_trashcan;

buymode_list_length = array_height_2d(buymode_list);