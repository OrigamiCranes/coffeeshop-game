#define buildmode_place_floor
///buildmode_place_floor(x,y)

//1. add to grid
global.room_floor_grid[argument[0],argument[1]] = s_floor;

//2. update mp grid
mp_grid_clear_cell(global.grid, argument[0], argument[1])



#define buildmode_place_floor_line
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
        buildmode_place_floor(n,m);
        n++;
    }
    
}

else if( line_direction == 1 || line_direction == 3)
{
    while(n <= end_tile)
    {
        buildmode_place_floor(m,n);
        n++;
    }
}

#define buildmode_place_floor_area
///buildmode_place_floor_area(x_start,y_start,x_end,y_end);

var x_start = argument[0];
var y_start = argument[1];
var x_end = argument[2];
var y_end = argument[3];

var n = y_start;
var m = x_start;

while(n <= y_end)
{
    while(m <= x_end)
    {
        buildmode_place_floor(m,n);
        m++;
    } 
    n++;
    m = x_start;
}