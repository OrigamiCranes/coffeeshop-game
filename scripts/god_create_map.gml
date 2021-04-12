///god_create_map()



//0. Variables
//0.1 GENERATE GRID
god_generateGrid();

//0.2 background start/end
//y axis
map_bg_start = 0;
map_bg_end = 3;

//0.3 streetwall
map_streetwall = 5;

map_customerSpawn_x[0] = 0;
map_customerSpawn_y[0] = map_bg_end+1;

map_customerExit_x[0] = 0;
map_customerExit_y[0] = map_bg_end+1;

map_entranceMain_x = 10;
map_entranceMain_y = map_streetwall;

map_customerQueue_x[0] = map_entranceMain_x+1;
map_customerQueue_y[0] = map_streetwall+4;

map_till_x[0] = map_entranceMain_x+1;
map_till_y[0] = map_customerQueue_y[0] + 2;

map_expressoMaker_x[0] = map_till_x[0] - 2;
map_expressoMaker_y[0] = map_till_y[0];

map_sink_x[0] = map_expressoMaker_x[0] - 2;
map_sink_y[0] = map_till_y[0];

//walls
map_wall_y_start[0] = map_streetwall;
map_wall_y_end[0] = map_streetwall+12;
map_wall_y_pos[0] = 2;

map_wall_y_start[1] = map_streetwall;
map_wall_y_end[1] = map_streetwall+map_wall_y_end[0];
map_wall_y_pos[1] = 13;

map_wall_x_start[0] = map_wall_y_pos[0];
map_wall_x_end[0] = map_wall_y_pos[1];
map_wall_x_pos[0] = map_wall_y_end[0];

//windows
map_window_x[0] = map_wall_y_pos[0] + 2;
map_window_y[0] = map_streetwall;

map_window_x[1] = map_window_x[0] + 1;
map_window_y[1] = map_streetwall;

map_window_x[2] = map_window_x[0] + 2;
map_window_y[2] = map_streetwall;

map_window_x[3] = map_window_x[0] + 3;
map_window_y[3] = map_streetwall;

//floor
//shopfloor
map_floor_shop_x_start = map_wall_y_pos[0];
map_floor_shop_y_start = map_streetwall;
map_floor_shop_x_end = map_wall_y_pos[1];
map_floor_shop_y_end = map_wall_y_end[1];


//pavement
map_floor_pavement_x_start = 0;
map_floor_pavement_y_start = map_bg_end+1   
map_floor_pavement_x_end = hcells
map_floor_pavement_y_end = map_streetwall-1;

//0.1 generate customer spawn
god_spawn_customerSpawn(map_customerSpawn_x[0],map_customerSpawn_y[0]);

//0.2 Generate customer exit
god_spawn_customerExit(map_customerExit_x[0],map_customerSpawn_y[0]);

//0.3 generate customer queue
god_spawn_customerQueue(map_customerQueue_x[0],map_customerQueue_y[0]);

//4. Draw Floors
buildmode_place_floor_area(map_floor_shop_x_start,map_floor_shop_y_start,
                            map_floor_shop_x_end,map_floor_shop_y_end);

//3. Draw Pavement
buildmode_place_floor_area(map_floor_pavement_x_start,map_floor_pavement_y_start,
                            map_floor_pavement_x_end,map_floor_pavement_y_end);



//1. Draw Walls
//street wall
buildmode_place_wall_line(0,hcells,0,map_streetwall)

//y direction walls
var n=0;
while(n<array_length_1d(map_wall_y_start))
{
    buildmode_place_wall_line(map_wall_y_start[n],map_wall_y_end[n],3,map_wall_y_pos[n]);
    n++;
}


//x direction walls
n=0;
while(n<array_length_1d(map_wall_x_start))
{
    buildmode_place_wall_line(map_wall_x_start[n],map_wall_x_end[n],0,map_wall_x_pos[n]);
    n++;
}


//draw doors
//main entrance
buildmode_place_door(map_entranceMain_x,map_entranceMain_y);



//2. Draw Windows
var n = 0;
while(n < array_length_1d(map_window_x))
{
    buildmode_place_window(map_window_x[n],map_window_y[n]);
    n++;   
}

//n. UPDATE WALLS SPRITES
buildmode_update_walls();



//--BUY MODE--

//-- TILLS
var n = 0;
while(n < array_length_1d(map_till_x))
{
    buymode_place_till(map_till_x[n],map_till_y[n]);
    n++;
}

//-- EXPRESSO MAKERS
var n = 0;
while(n < array_length_1d(map_expressoMaker_x))
{
    buymode_place_expressoMaker(map_expressoMaker_x[n],map_expressoMaker_y[n]);
    n++;
}

//-- SINKS
var n = 0;
while(n < array_length_1d(map_sink_x))
{
    buymode_place_sink(map_sink_x[n],map_sink_y[n]);
    n++;
}



