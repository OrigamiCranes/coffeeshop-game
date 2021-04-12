//player_interact_draw_bar(x,y)

//draw border/outline
draw_set_colour(c_black)
draw_rectangle(argument[0],argument[1],argument[0]+interact_gui_interaction_bar_width,argument[1]+interact_gui_interaction_bar_height,0);

//draw % complete
draw_set_colour(interact_gui_interaction_bar_colour);
draw_rectangle(interact_gui_interaction_bar_border_thickness+argument[0],
                interact_gui_interaction_bar_border_thickness+argument[1],
                argument[0]+interact_gui_interaction_bar_height_min+((interact_gui_interaction_bar_width-interact_gui_interaction_bar_height_min-interact_gui_interaction_bar_border_thickness)*(interaction_timer/interaction_current_alarm)),
                argument[1]+interact_gui_interaction_bar_height-interact_gui_interaction_bar_border_thickness,0)
