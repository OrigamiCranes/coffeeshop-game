with(zui_main())
{

var window_id;
window_id = zui_create(zui_get_width() * 0.2, zui_get_height() * 0.4, objUIWindow, -1);

with(window_id)
{
    var window_x = 300;
    var window_y = 300;
    
    //2. FORMAT THE WINDOW
    zui_set_size(window_x,window_y)
    
    //2.1 Caption
    with (zui_create(0, 0, objUIWindowCaption)) {
    caption = "Customer Info";
    draggable = 1;
    }
}
}

return window_id;
