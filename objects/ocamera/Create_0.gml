/// @description Setup Camera
// You can write your code in this editor

cam = view_camera[0]; //Getting the name of the camera / viewport number.
follow = oPlayer; // Camera follows the oldest instance of this object. ONLY Use if there's only one of this type of instance in the room. 
view_w_half = camera_get_view_width(cam) * 0.5; // Getting camera width and height.
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart; // Where the camera is moving to, on the x and y plane. Are interchangeable with 'x' and 'y'.
yTo = ystart;

