//depth_update()
//sets the depth of the object


depth = -y + depth_bias;

var temp = floor(y/o_god.tile_size);
var temp_depth = -y*(temp+1);

if(depth < temp_depth)
{
    depth = temp_depth +1;
}


