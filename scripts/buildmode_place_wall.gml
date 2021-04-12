#define buildmode_place_wall
///buildmode_place_wall(x_tile,y_tile)


//1. add to grid
global.room_wall_grid[argument[0],argument[1]] = s_wall_tile;

//2. update mp grid
mp_grid_add_cell(global.grid, argument[0], argument[1])



#define buildmode_place_wall_line
///buildmode_place_wall_line(start_tile,end_tile,direction,pos)
//start tile, end_tile, direction (0,1,2,3), pos(other axes position)

var start_tile = argument[0];
var end_tile = argument[1];
var line_direction = argument[2];
var pos = argument[3];

switch(line_direction)
{
    case 0:
        
    break;
    
    case 1:
    
        var temp = end_tile;
        end_tile = start_tile;
        start_tile = temp;
        
    break;
    
    case 2:
        
        var temp = end_tile;
        end_tile = start_tile;
        start_tile = temp;
        
    break;
    
    case 3:
        
    break;
}

var n = start_tile, var m = pos;
if(line_direction == 0 || line_direction == 2)
{
    while(n <= end_tile)
    {
        buildmode_place_wall(n,m);
        n++;
    }
    
}

else if( line_direction == 1 || line_direction == 3)
{
    while(n <= end_tile)
    {
        buildmode_place_wall(m,n);
        n++;
    }
}