/// @description Update Camera
// You can write your code in this editor

//Update Destination
if (instance_exists(follow)) 
{
	xTo = follow.x;
	yTo = follow.y; 
	
}


//Update Camera position based on the distance of the player from edge of.. screen? map? camera? 

var deltaX 
var deltaY 

deltaX = (xTo - x)
deltaY = (yTo - y) 

var maxDeltaX
var maxDeltaY 

maxDeltaX = 16 
maxDeltaY = 16 

x += sign(deltaX) * (max(0, deltaX - maxDeltaX))
y += sign(deltaY) * (max(0, deltaY - maxDeltaY))

//Update Object Position

x += (xTo - x) / 15;
y += (yTo - y) / 15;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

x = clamp(x,view_w_half,room_width-view_w_half); 
y = clamp(y,view_h_half,room_height-view_h_half);

//Update camera view, updated to work between room transitions. Should 'snap' when transitioning rooms, but pan / slide when following player.

camera_set_view_pos(cam,x - view_w_half,y - view_h_half);