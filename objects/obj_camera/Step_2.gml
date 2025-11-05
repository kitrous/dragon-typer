#macro view view_camera[0]

camera_set_view_size(view,view_width,view_height);

if (instance_exists(objBilly))
{
var _x = objBilly.x-view_width/2;
var _y = objBilly.y-view_height/2;
camera_set_view_pos(view,_x,_y);
}