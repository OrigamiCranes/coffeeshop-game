draw_sprite(spr_player,facing_direction,x,y);
var n=1;

draw_text(16,16*n,player_state);
n++;
draw_text(16,16*n,camera_velocity_x);
n++;
draw_text(16,16*n,camera_velocity_y);
n++;
draw_text(16,16*n,action_move_left);
n++;
draw_text(16,16*n,debug);
/*
draw_text(16,16*n,x);
n++;
draw_text(16,16*n,y);
n++;
draw_text(16,16*n,current_coord[0]);
n++;
draw_text(16,16*n,current_coord[1]);
n++;
draw_text(16,16*n,depth);
*/
player_draw_interact();
player_buymode_draw();
