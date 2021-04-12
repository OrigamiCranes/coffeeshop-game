///buymode_purchase_tableseat(x_tile,y_tile)
var in_x = argument[0];
var in_y = argument[1];

//1. Check if enough money
if(money_current >= table_cost+seat_cost)
{

//2. Place Table
buymode_place_table(in_x,in_y);
buymode_place_seat(in_x+1,in_y,2)

//3. Remove Money
money_remove(table_cost+seat_cost);

//4. Play Sound

}
