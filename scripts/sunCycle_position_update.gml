///sunCycle_position_update()
//update the position in the sky for gui


sunCycle_pos_y = sunCycle_pos_y_start - sunCycle_y_radius*sin(sunCycle_current_time*pi)
sunCycle_pos_x = sunCycle_pos_x_start + sunCycle_x_diam*sunCycle_current_time;

