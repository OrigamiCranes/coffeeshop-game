expresso_amount = 0;
active = 0;
default_timer = 0;
default_alarm = 0;
expresso_max = 1;
animation_frames = 128;
inventory_id = 0;

//ADD TO LIST
with(o_god)
{
    god_add_expressoMaker(other.id)
}


depth_bias = 0;
depth_update();

coffeeHolder_amount = 1;
coffeeHolder_max = 4;

var n = 0;
while(n < coffeeHolder_max)
{
    coffeeHolder_coffee[n] = 0;
    coffeeHolder_cup[n] = 0;
    coffeeHolder_cup[n+coffeeHolder_max] = 0;
    coffeeHolder_espresso[n] = 0;
    coffeeHolder_espresso[n+coffeeHolder_max] = 0;
    coffeeHolder_active[n] = 0;
    coffeeHolder_timer[n] = 0;
    coffeeHolder_complete[n] = 0;
    
    coffeeHolder_coffee_id[n] = 0;
    coffeeHolder_cup_id[n] = 0;
    coffeeHolder_cup_id[n+coffeeHolder_max] = 0;
    coffeeHolder_espresso_id[n] = 0;
    coffeeHolder_espresso_id[n+coffeeHolder_max] = 0;
    n++;
}
