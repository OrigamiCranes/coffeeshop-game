///menu_open
//initialises the menu gui

//0. initialise ZUI
with(zui_main())
{

var window_id;
window_id = zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, objUIWindow, -1);
//1. Create the ZUI object
with(window_id) 
{

    var window_x = 300;
    var window_y = 316;
    var button_x_start = 140;
    var button_y_start = 38;
    var button_width = 120;
    var button_height = 32;
    var button_y_spacing = button_height+12;
    
    
    
    //2. FORMAT THE WINDOW
    zui_set_size(window_x,window_y)
    
    //2.1 Caption
    with (zui_create(0, 0, objUIWindowCaption)) {
    caption = "Menu";
    draggable = 1;
    }
    
    //3. ADD THE BUTTONS
    
    
    //3.1 RESUME - button
    var n = 0;
    var button_x_pos = button_x_start;
    var button_y_pos = button_y_start + button_y_spacing*n;
    
    with(zui_create(button_x_pos,button_y_pos, objUIButton))
    {
        zui_set_anchor(0, 0);
        zui_set_size(button_width,button_height);
        callback = menu_callback_resume;
        caption = "Resume"
    }
    
    //3.2 SAVE
    var n = 1;
    var button_x_pos = button_x_start;
    var button_y_pos = button_y_start + button_y_spacing*n;
    
    with(zui_create(button_x_pos,button_y_pos, objUIButton))
    {
        zui_set_anchor(0, 0);
        zui_set_size(button_width,button_height);
        callback = test_callback_button;
        caption = "Save"
    }
    
    //3.3 LOAD
    var n = 2;
    var button_x_pos = button_x_start;
    var button_y_pos = button_y_start + button_y_spacing*n;
    
    with(zui_create(button_x_pos,button_y_pos, objUIButton))
    {
        zui_set_anchor(0, 0);
        zui_set_size(button_width,button_height);
        callback = test_callback_button;
        caption = "Load"
    }    
    
    //3.4 KEYBINDINGS
    var n = 3;
    var button_x_pos = button_x_start;
    var button_y_pos = button_y_start + button_y_spacing*n;
    
    with(zui_create(button_x_pos,button_y_pos, objUIButton))
    {
        zui_set_anchor(0, 0);
        zui_set_size(button_width,button_height);
        callback = test_callback_button;
        caption = "Keybindings"
    }    
    
    //3.5 MAIN MENU
    var n = 4;
    var button_x_pos = button_x_start;
    var button_y_pos = button_y_start + button_y_spacing*n;
    
    with(zui_create(button_x_pos,button_y_pos, objUIButton))
    {
        zui_set_anchor(0, 0);
        zui_set_size(button_width,button_height);
        callback = test_callback_button;
        caption = "Quit to Menu"
    }    
 
    //3.5 MAIN MENU
    var n = 5;
    var button_x_pos = button_x_start;
    var button_y_pos = button_y_start + button_y_spacing*n;
    
    with(zui_create(button_x_pos,button_y_pos, objUIButton))
    {
        zui_set_anchor(0, 0);
        zui_set_size(button_width,button_height);
        callback = test_callback_button;
        caption = "Quit to Desktop"
    }       

}

//final. RETURN ZUI ID
return window_id;
}


