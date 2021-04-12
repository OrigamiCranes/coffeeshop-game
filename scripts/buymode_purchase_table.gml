///buymode_purchase_table(x,y)
var in_x = argument[0];
var in_y = argument[1];

//1. Check if enough money
if(money_current >= table_cost)
{

//2. Place Table
buymode_place_table(in_x,in_y);

//3. Remove Money
money_remove(table_cost);

//4. Play Sound

}
