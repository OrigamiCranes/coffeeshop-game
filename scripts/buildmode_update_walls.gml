#define buildmode_update_walls
///buildmode_update_walls()
//update the sprite subimage number of the walls, dependant on the next to tiles


var m = 0; var n = 0;
while(m < vcells)
{
    while(n < hcells)
    {
        //if the tile is not empty
        if(global.room_wall_grid[n,m] != 0)
        {
            //its a wall piece, so check the surrounding tiles for the correct subimage
            buildmode_update_walls_tile(n,m);
        }
        
        n++;
    }
    
    m++;
    n = 0;
}

#define buildmode_update_walls_tile
//buildmode_update_walls_tile(x_tile,y_tile)

//update_tile_wall(x,y,coord/grid)
//coord/grid defines whether the x,y inputs are coord or grid
// 0 == coord, 1 == grid
//http://www.angryfishstudios.com/2011/04/adventures-in-bitmasking/

var temp_x = argument0;
var temp_y = argument1;
var left = 0;
var top = 0;

var wall_direction = 0;

var skip_x_minus = 0;
var skip_x_plus = 0; 
var skip_y_minus = 0;
var skip_y_plus = 0;
//step 1. check if its near the edge
if(temp_x == 0)
{
    skip_x_minus = 1;
}
else if(temp_x == hcells)
{
    skip_x_plus = 1;
}

if(temp_y == 0)
{
    skip_y_minus = 1;
}
else if(temp_y == vcells)
{
    skip_y_plus = 1;
}

//step 2: check all surrounding tiles to see if walls exist
if(skip_y_minus == 0)
{
if(global.room_wall_grid[temp_x,temp_y - 1] != 0)
{
    wall_direction += 1;  //up
}
}

if(skip_x_plus == 0)
{

if(global.room_wall_grid[temp_x + 1,temp_y] != 0)
{
    wall_direction += 2; //right
}

}

if(skip_y_plus == 0)
{


if(global.room_wall_grid[temp_x,temp_y + 1] != 0)
{
    wall_direction += 4;  //down
}
}

if(skip_x_minus == 0)
{

if(global.room_wall_grid[temp_x - 1,temp_y] != 0)
{
    wall_direction += 8;  //left
}

}

//update subsprite
global.room_wall_grid_subsprite[temp_x,temp_y] = wall_direction;
/**
//next decide which is the tile value
switch(wall_direction)
{
    case 0:
    {
        //none
        left = 1;
        top = 3;
        
        break;
    }
    
    case 1:
    {
        //up
        left = 0;
        top = 2;
        break;
    }
    case 2:
    {
        //right
        left = 1;
        top = 1;
        break;
    }
    case 3:
    {
        //up + right
        left = 2;
        top = 1;
        break;
    }
    case 4:
    {
        //down
        left = 0;
        top = 1;
        break;
    }
    case 5:
    {
        //up + down
        left = 0;
        top = 0;
        break;
    }
    case 6:
    {
        //right + down
        left = 2;
        top = 0;
        break;
    }
    case 7:
    {
        //up + right + down
        left = 4;
        top = 2;
        break;
    }
    case 8:
    {
        //left
        left = 1;
        top = 2;
        break;
    }
    case 9:
    {
        //up + left
        left = 3;
        top = 1;
        break;
    }
    case 10:
    {
        //left + right
        left = 1;
        top = 0;
        break;
    }
    case 11:
    {
        //up + left + right
        left = 4;
        top = 1;
        break;
    }
    case 12:
    {
        //left + down
        left = 3;
        top = 0;
        break;
    }
    case 13:
    {
        //up + left + down
        left = 5;
        top = 2;
        break;
    }
    case 14:
    {
        //left + right + down
        left = 4;
        top = 0;
        break;
    }
    case 15:
    {
        //up + left + right + down
        left = 6;
        top = 2;
        break;
    }
}