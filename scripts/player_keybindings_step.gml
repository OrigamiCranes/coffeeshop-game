// 0. FLUSH THEM BINDINGS!!!

//0.1 CHECK FOR HOLDS
action_shoot_release = 0;
if(action_shoot_key == 1 || action_shoot_hold == 1)
{
    var n = 0;
    while(n < array_length_1d(shoot_key))
    {
        if(mouse_check_button(shoot_key[n]) == 1)
        {
            action_shoot_hold = 1;   
            break;    
        }
        n++;
    }
    
    if(n >= array_length_1d(shoot_key) && action_shoot_hold == 1)
    {
        action_shoot_release = 1;
        action_shoot_hold = 0;
    }

}

//0.2 FLUSH
action_move_left = 0;
action_move_right = 0;
action_move_up = 0;
action_move_down = 0;
action_move_alarm = 0;

action_interaction_key = 0;
action_shoot_key = 0;
action_shootalt_key = 0;
action_powerup_key = 0;

action_mousewheel_up = 0;
action_mousewheel_down = 0;

action_gameSpeed = 0;
action_gameMode = -1;

// 1. GO THROUGH EACH BUTTON TYPE CHECKING FOR PRESSES
// 1.1 move_left
var n = 0;
while(n < array_length_1d(move_left))
{
    if(keyboard_check(ord(move_left[n])) == 1)
    {
        action_move_left = 1;  
        action_move_alarm = 1; 
        break;    
    }
    n++;
}

// 1.2 move_right
var n = 0;
while(n < array_length_1d(move_right))
{
    if(keyboard_check(ord(move_right[n])) == 1)
    {
        action_move_right = 1;
        action_move_alarm = 1;    
        break;    
    }
    n++;
}

// 1.3 move_up
var n = 0;
while(n < array_length_1d(move_up))
{
    if(keyboard_check(ord(move_up[n])) == 1)
    {
        action_move_up = 1; 
        action_move_alarm = 1;   
        break;    
    }
    n++;
}

// 1.4 move_down
var n = 0;
while(n < array_length_1d(move_down))
{
    if(keyboard_check(ord(move_down[n])) == 1)
    {
        action_move_down = 1; 
        action_move_alarm = 1;   
        break;    
    }
    n++;
}

// 1.5 interaction_key
var n = 0;
while(n < array_length_1d(interaction_key))
{
    if(keyboard_check(ord(interaction_key[n])) == 1)
    {
        action_interaction_key = 1;   
        break;    
    }
    n++;
}

// 1.6 shoot_key
var n = 0;
while(n < array_length_1d(shoot_key))
{
    if(mouse_check_button(shoot_key[n]) == 1)
    {
        if(action_shoot_hold != 1)
        {
            action_shoot_key = 1;   
            break; 
        }
   
    }
    n++;
}

// 1.7 shootalt_key
var n = 0;
while(n < array_length_1d(shootalt_key))
{
    if(mouse_check_button(shootalt_key[n]) == 1)
    {
        action_shootalt_key = 1;   
        break;    
    }
    n++;
}

// 1.8 powerup_key
var n = 0;
while(n < array_length_1d(powerup_key))
{
    if(keyboard_check(ord(powerup_key[n])) == 1)
    {
        action_powerup_key = 1;   
        break;    
    }
    n++;
}


// 1.9 gameSpeed
var m = 0;
while(m < array_height_2d(gameSpeed_key))
{

var n = 0;
while(n < array_length_2d(gameSpeed_key,m))
{
    if(keyboard_check(ord(gameSpeed_key[m,n])) == 1)
    {
        action_gameSpeed = m+1;   
        break;    
    }
    n++;
}


m++;
}

// 1.10 GAMEMODE
var m = 0;
while(m < array_height_2d(gameMode_key))
{

var n = 0;
while(n < array_length_2d(gameMode_key,m))
{
    if(keyboard_check(gameMode_key[m,n]) == 1)
    {
        action_gameMode = m;   
        break;    
    }
    n++;
}


m++;
}

// 1.11 MOUSE WHEEl
if(mouse_wheel_up() == 1)
{
    action_mousewheel_up = 1;
}

else if(mouse_wheel_down() == 1)
{
    action_mousewheel_down = 1;
}

// 2. CHECK FOR ANY KEY CLASHES (LEFT/RIGHT PRESS)
if(action_move_left && action_move_right)
{
    action_move_left = 0;
    action_move_right = 0;
    
    if(action_move_up == 0 && action_move_down == 0)
    {
        action_move_alarm = 0;
    }
    
}

if(action_move_up && action_move_down)
{
    action_move_up = 0;
    action_move_down = 0;
    
    if(action_move_left == 0 && action_move_right == 0)
    {
         action_move_alarm = 0;
    }
    
}


