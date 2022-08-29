/// @description Update Camera
// You can write your code in this editor

//Update Destination
if (instance_exists(follow)) 
{
	xTo = follow.x;
	yTo = follow.y; 
	
}

//Update Object Position

x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Update camera view
camera_set_view_pos(cam,x - view_w_half,y - view_h_half);