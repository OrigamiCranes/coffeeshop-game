//0. Variables

tile_size = 64;
tile_size_half = tile_size / 2;


resolution_create();

//spawn deltaTime
instance_create(0,0,obj_SteadyDeltaTime);

// tile_depth
depth_wall = 0;
depth_floor = depth_wall +1;
depth_sunCycle = 10000;





//table
list_table = ds_list_create();
list_till = ds_list_create();
list_trashcan = ds_list_create();
list_sink = ds_list_create();
list_dumpster = ds_list_create();
list_expressoMaker = ds_list_create();

list_customerExit = ds_list_create();

//customer queue
queue_customers = ds_list_create();

//generate Grid
//background scene walls, floors etc.
god_create_map();

//Customer
active_customers = ds_list_create();

customer_spawn_x = o_customer_spawn.x;
customer_spawn_y = o_customer_spawn.y;

customer_u_speed = tile_size*3;
customer_speed = customer_u_speed;



customer_queue_x = o_customer_queue.x;
customer_queue_y = o_customer_queue.y;


coffeeFlow_speed = tile_size*9; 
coffeeFlow_speedMax = tile_size*27;

buymode_create();
buildmode_create();

//--- TIME/WEATHER SYSTEM--
//create clock
clock_create();

//create weather
weather_create();

//create sunCycle
sunCycle_create();

//-- GUI POSITIONS--
//create gui_positions
god_gui_positions();

//--AUDIO--
audio_create();

//--STORE RELATED STUFF--
store_create();
god_items_create();

//--GAMESPEED--
gameSpeed_create();

//--SPAWNER--
spawner_create();

//spawn player
instance_create(10*tile_size,10*tile_size,o_player);



