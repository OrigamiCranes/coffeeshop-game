///buymode_purchase(ix,iy buymode_list_id)

var ix = argument[0];
var iy = argument[1];
var buymode_n = argument[2];

//0. CHECK IF POSSIBLE TO PLACE ITEM HERE
if(buymode_check_gridspace(ix,iy) == 0)
{
    //error
    //0.1 PLAY CANT PLACE SOUND
    
    //0.2 quit
    exit;
}
 
//1. CHECK IF ENOUGH MONEY
if(money_current >= buymode_list[buymode_n,2])
{
    //2. PLACE OBJECT
    instance_create(ix*tile_size,iy*tile_size,buymode_list[buymode_n,3]);
    
    //3. REMOVE MONEY
    money_remove(buymode_list[buymode_n,2]);
    
    //4. PLAY PURCHASE SOUND

}

else
{
    //4. PLAY NO MONEY SOUND
}
