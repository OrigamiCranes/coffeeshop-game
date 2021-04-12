///gameSpeed_update(newGameSpeed)


var temp_speed = gameSpeed_speed[argument[0]];
gameSpeed_current = argument[0];

// 1. UPDATE CLOCK SPEED
clock_realTime_ratio = clock_u_ratio * 1/temp_speed;

// 2. UPDATE CUSTOMER SPEED
customer_speed = customer_u_speed * temp_speed;

// 3. UPDATE PLAYER SPEED

o_player.movement_speed = o_player.u_movement_speed * temp_speed;

// 3.1 UPDATE INTERACTION SPEED
with(o_player)
{
    player_interact_update_gameSpeed(temp_speed);
}

