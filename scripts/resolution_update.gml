///zoomUpdate()
/***
//Step 1: get the current ratio of the mouse to the view
var _mouse_x,_mouse_y;
_mouse_x=(mouse_x-view_xview)/view_wview;
_mouse_y=(mouse_y-view_yview)/view_hview;

//Step 2: Update view widths and height.
view_wview=floor(ideal_width*zoom);
view_hview=floor(ideal_height*zoom);

//Step 3: Update position of view based on ratio and mouse position.
view_xview=mouse_x-view_wview*_mouse_x;
view_yview=mouse_y-view_hview*_mouse_y;
***/
//Step 1: get the current ratio of the mouse to the view
var _mouse_x,_mouse_y;
_mouse_x=(mouse_x-view_xview)/view_wview;
_mouse_y=(mouse_y-view_yview)/view_hview;

//Step 2:
var new_width = ideal_width * 1;
var new_height = ideal_height * 1;


view_wview=new_width;
view_hview=new_height;


//Step 3: Update position of view based on ratio and mouse position.
view_xview=mouse_x-view_wview*_mouse_x;
view_yview=mouse_y-view_hview*_mouse_y;
