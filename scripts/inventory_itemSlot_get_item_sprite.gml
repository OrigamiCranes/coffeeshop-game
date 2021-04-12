///inventory_itemSlot_update_item_data()
//updates 'item_' named variables from current item_id val


//1. Get item_sprite
//--note: have to define a way to reference seperate 's_utensil_cup' (sprite image files)

//2. Get SubImage Data
with(o_god)
{
    other.item_subImage = god_items_findVal(other.item_id,items_legend.subImage)
}
