///o_inventoryBar_update_position_itemSlots()

var n =0; var temp_x = x; var temp_y = y;
while(n < array_length_1d(itemSlot))
{
    temp_x = x+(n*itemSlot_width);
    itemSlot[n].x = temp_x;
    itemSlot[n].y = temp_y;
    n++;
}
