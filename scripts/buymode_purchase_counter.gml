///buymode_purchase_counter(x_tile,y_tile)
var in_x = argument[0];
var in_y = argument[1];

//1. Check if enough money
if(money_current >= counter_cost)
{

//2. Place Table
buymode_place_counter(in_x,in_y);

//3. Remove Money
money_remove(counter_cost);

//4. Play Sound

}
