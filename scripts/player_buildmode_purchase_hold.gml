
//0. CHECK IF FIRST STEP CYCLE
//0.1 GET X/y COORDS IF SO
if(buildmode_hold == 0)
{
    buildmode_hold = 1;
    
    buildmode_x_start = mouse_x;
    buildmode_y_start = mouse_y;
    
}
        
//2. Get Current Mouse X, mouse Y
buildmode_x_current = mouse_x;
buildmode_y_current = mouse_y;

//2.1 Calculate direction

var x_bias = buildmode_x_start -  buildmode_y_current;
var y_bias = buildmode_y_start - buildmode_y_current;

buildmode_direction = 0;
if(x_bias > 0)
{
    buildmode_direction += 1;
}
else if(x_bias < 0)
{
    buildmode_direction += 2;
}      
if(y_bias > 0)
{
    buildmode_direction += 4;
}
else if(y_bias < 0)
{
    buildmode_direction += 8;
}
 




