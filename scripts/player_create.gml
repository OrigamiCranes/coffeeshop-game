debug = 0;

//live mode
player_state = 1;

buildTree_create();
player_keybindings_create();
player_alarms_create();
player_interact_create();
player_mouse_create();
player_inventory_create();
player_movement_create();
player_camera_create();
player_buymode_create();
player_buildmode_create();
player_menu_create();
player_livemode_create();
player_customerInfo_create();

u_movement_speed = o_god.tile_size * 5;
movement_speed = u_movement_speed;
nearby_workstation_id = 0;
interaction_active = 0;
game = 0;







//
current_coord[0] = floor(x/o_god.tile_size);
current_coord[1] = floor(y/o_god.tile_size);

//
check_id = 0;
check_coord[0] = current_coord[0];
check_coord[1] = current_coord[1] + 1;

depth_bias = -3;
depth_update();

