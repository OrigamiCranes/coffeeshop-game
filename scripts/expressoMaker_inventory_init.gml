///expressoMaker_inventory_create()

//0. DEFINE VARIABLES
//maybe think about scaling with percentages

//scale based on coffeeHolder_amount
width = 0;
height = 0;


itemSlot_w = 32;
itemSlot_h = 32;

startButton_y = 16;

itemSlot_coffee_x =  32;
itemSlot_coffee_y = 32;

itemSlot_cup_x = 8;
itemSlot_cup_y = 64;

progressBar_x = 8;
progressBar_y = 32;



//1. Spawn the BG/Images etc.





//--OBJECT SPAWNING--
//2. Spawn the ItemSlots

var n = 0;
while(n < parent.coffeeHolder_amount)
{
    //2.1 Spawn Coffee Slots
    itemSlot_coffee[n] = instance_create(itemSlot_coffee_x,itemSlot_coffee_y, o_inventory_itemSlot);
    itemSlot_coffee[n].gui_parent = id;
    ds_list_add(child_id,itemSlot_coffee[n]);
    
    itemSlot_coffee[n].parent = parent;
    itemSlot_coffee[n].slot_n = n;
    itemSlot_coffee[n].item_id = parent.coffeeHolder_coffee_id[n];
    itemSlot_coffee[n].callback_drop = expressoMaker_add_coffee;
    itemSlot_coffee[n].callback_pickup = expressoMaker_remove_coffee;
    
    if(parent.coffeeHolder_active[n] == 1)
    {
        itemSlot_coffee[n].locked = 1;
    }
    else
    {
        itemSlot_coffee[n].locked = 0;
    }

n++
}

var n = 0;
while(n < parent.coffeeHolder_amount*2)
{

    //2.2 Spawn Cup/Espresso Slots
    itemSlot_cup[n] = instance_create(itemSlot_cup_x,itemSlot_cup_y,o_inventory_itemSlot);
    itemSlot_cup[n].gui_parent = id;
    ds_list_add(child_id,itemSlot_cup[n]);
    
    itemSlot_cup[n].parent = parent;
    itemSlot_cup[n].slot_n = n;
    itemSlot_cup[n].item_id = parent.coffeeHolder_cup_id[n];
    itemSlot_cup[n].callback_drop = expressoMaker_add_cup;
    itemSlot_cup[n].callback_pickup = expressoMaker_remove_cup;
    
    if(parent.coffeeHolder_active[n] == 1)
    {
        itemSlot_cup[n].locked = 1;
    }
    else
    {
        itemSlot_cup[n].locked = 0;
    }

n++
}


//3. Spawn the Start Buttons
button_start[n] = instance_create(0,0,o_inventory_button);
button_start[n].gui_parent = id;
ds_list_add(child_id,button_start[n]);

button_start[n].parent = parent;
button_start[n].callback = expressoMaker_start_expresso;


//SET SELECTED TO FIRST ITEMSLOT
selected_id  = itemSlot_coffee[0];
selected_id.selected = 1;

