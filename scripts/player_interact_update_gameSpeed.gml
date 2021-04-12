///player_interact_update_gameSpeed(speed)
var temp_speed = 1/argument[0];

var temp_ratio = interaction_timer/interaction_alarm;

interaction_alarm = u_interaction_alarm * temp_speed;

interaction_timer = interaction_alarm* temp_ratio;

interaction_cooldown_alarm = u_interaction_cooldown_alarm * temp_speed;

interaction_table_alarm = u_interaction_table_alarm * temp_speed;

interaction_expressoMaker_alarm = u_interaction_expressoMaker_alarm * temp_speed;

interaction_cleanDishes_alarm = u_interaction_cleanDishes_alarm * temp_speed;

interaction_trashBin_alarm = u_interaction_trashBin_alarm * temp_speed;
interaction_cleanBin_alarm = u_interaction_cleanBin_alarm * temp_speed;

interaction_dumpster_alarm = u_interaction_dumpster_alarm * temp_speed;
