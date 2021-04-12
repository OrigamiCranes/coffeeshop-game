//facing_direction
/***
0 = e
1 = n
2 = w
3 = s
***/
facing_direction = 3;

x_new = 0;
y_new = 0;

var player_size_half = 4;

var width = 16;
var offset_y = 28;
var offset_x = 0;

//collision mask, its a rectangle shape 

collision[0,0] = offset_x-width;
collision[0,1] = offset_y-player_size_half;

collision[1,0] = offset_x+0;
collision[1,1] = offset_y-player_size_half;

collision[2,0] = offset_x+width;
collision[2,1] = offset_y-player_size_half;

collision[3,0] = offset_x-width;
collision[3,1] = offset_y+0;

collision[4,0] = offset_x+width;
collision[4,1] = offset_y+0;

collision[5,0] = offset_x-width;
collision[5,1] = offset_y+player_size_half;

collision[6,0] = offset_x+0;
collision[6,1] = offset_y-player_size_half;

collision[7,0] = offset_x+width;
collision[7,1] = offset_y+player_size_half;

collision[8,0] = offset_x+0;
collision[8,1] = offset_y+0;
