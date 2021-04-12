
player_keybindings_step();

player_gameSpeed_step();
   
player_gamemode_step();

//state == 0
player_menu_step();

//state == 1
player_livemode_step();

//state == 2
player_buymode_step();

//state == 3
player_buildmode_step();


depth_update();

