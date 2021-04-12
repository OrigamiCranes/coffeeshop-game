
//interact
interaction_cooldown_trigger = 0;
interaction_bar_trigger = 0; 
interaction_release_trigger = 0;

//gui elements

interact_gui_interaction_bar_position[0] = 0;
interact_gui_interaction_bar_position[1] = -8;
interact_gui_interaction_bar_width = o_god.tile_size;
interact_gui_interaction_bar_height = 8;
interact_gui_interaction_bar_height_min = 2;
interact_gui_interaction_bar_border_thickness = 2;

interact_gui_interaction_bar_colour = make_colour_rgb(93, 134, 229);

player_interact_alarms_create();
