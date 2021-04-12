
//1. CHECK FOR MOUSEWHEEL ACTION
if(action_mousewheel_up == 1)
{
    with(o_player_inventoryBar)
    {
        player_inventoryBar_update_current_itemSlot(1)
    }
    
}

else if(action_mousewheel_down == 1)
{
    with(o_player_inventoryBar)
    {
        player_inventoryBar_update_current_itemSlot(-1)
    }
}


//2. CHECK FOR ACTION_SHOOT_KEY == 1
//if mouseclick && there is no current item grabbed
if(action_shoot_key == 1 && mouse_click_id == 0)
{
    //2.1 CHECK FOR ANY COLLISION WITH THE INVENTORY GUI ITEMSLOTS
    var temp_id = instance_position(mouse_x,mouse_y,o_inventory_itemSlot)
    
    //if there is a collision
    if(temp_id != noone)
    {   
        
        //goto player_itemSlot_pickup
        mouse_click_id = temp_id;
        player_inventory_itemSlot_pickup(temp_id);
    }
    
    //2.2 Customer Click Check
    player_mouse_check_customerInfo();
}
//else there is a currently grabbed item && Mouse has been clicked
else if(action_shoot_key == 1 && mouse_click_id == 1 )
{
        
        //CHECK THE MOUSE POSITION TO SEE IF ITS DROPPED IN ANY OTHER ITEMSLOTS
        var temp_id = instance_position(mouse_x,mouse_y,o_inventory_itemSlot);
        
        if(temp_id != noone)
        {
            player_inventory_itemSlot_dropIn(temp_id);
            
            mouse_click_id = 0;
            
        }
        
}
