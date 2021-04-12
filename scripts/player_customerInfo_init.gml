//check if customerInfo already open


//If open; update customerInfo
if(customerInfo_gui_id != 0)
{
    player_customerInfo_update();
}
//if not, create customerWindow
else
{
    customerInfo_gui_id = player_customerInfo_zui_create();
}
