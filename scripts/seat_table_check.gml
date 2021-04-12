//seat_table_check()
//check for table next to the seat
//returns table id

var x_coord = floor(x/o_god.tile_size);
var y_coord = floor(y/o_god.tile_size);

var x_new = x_coord 
var y_new = y_coord

//get next-to coordinate
//direction seat is facing
switch(rotation)
{
    case 0:
    {
        
        x_new += 1;
        break;
    
    }
    
    case 1:
    {
    
        y_new -= 1;
        break;
    }
    
    case 2:
    {
        
        x_new -= 1;
        break;
    
    }
    
    case 3:
    {
    
        y_new += 1;
        break;
    }
    
}

//check for any exceeding array values
if(x_new > -1 && x_new <  o_god.hcells)
{
    if(y_new > -1 && y_new < o_god.vcells)
    {
        //check to see if there is a table there
        var temp_id = global.room_object_grid[x_new,y_new];
        
        if(temp_id.object_index == o_table)
        {
            return temp_id;
        }
        else
        {
            temp_id = -1;
            return temp_id;
        }

    }
}
else
{
    var temp_id = -1;
    return temp_id;
}



