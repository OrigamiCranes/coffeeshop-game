

//1. CHECK FOR BUTTON PRESS
if(action_shoot_key == 1)
{


//2. PURCHASE ITEM WITH GOD
with(o_god)
{
    buymode_purchase(other.buymode_current_tile_x, other.buymode_current_tile_y,
        other.buymode_current_n);
}

}
