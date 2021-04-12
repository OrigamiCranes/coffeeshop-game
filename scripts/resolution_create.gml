//globals_resolution_create
//manages aspect ratio for pixel perfect zoom
//application_surface_draw_enable(false);

ideal_width = 0;
ideal_height= 960;

display_width = display_get_width()
display_height = display_get_height();

window_width = window_get_width();
window_height = window_get_height();

aspect_ratio = display_width / display_height;

ideal_width = round(ideal_height * aspect_ratio)

//check width for perfect scaling
if(display_width % ideal_width != 0)
{
    var d = round(display_width / ideal_width);
    ideal_width = display_width / d;
}
//check height for perfect scaling
if(display_height % ideal_height != 0)
{
    var d = round(display_height / ideal_height);
    ideal_height = display_height / d;
}

//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
 
 /** 
room_set_view(0,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0,-1);
room_set_view_enabled(0,true);

window_set_size(ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
surface_resize(application_surface,ideal_width,ideal_height);

resolution_update();
