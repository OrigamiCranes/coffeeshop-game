///player_inventoryBar_update_current_itemSlot(amount)

//deselect current itemSlot
itemSlot[itemSlot_current].selected = 0;

//add amount
itemSlot_current += argument[0];

//check for Overflow
if(itemSlot_current < 0)
{
    itemSlot_current = o_player.inventory_max-1;
}
else if(itemSlot_current >= o_player.inventory_max)
{

    itemSlot_current = 0;
}

//update new itemSlot
itemSlot[itemSlot_current].selected = 1;
