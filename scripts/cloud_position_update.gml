//cloud_position_update
//moves the cloud along 

var n = 0;
while(n < cloud_n)
{
    
    cloud_pos[n,0] += cloud_speed[n];
    
    n = n + 1;
}
