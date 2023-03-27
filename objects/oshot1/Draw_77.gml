/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,oWall)) 
	{
	    instance_create_depth(x, y, depth, oShot1Impact);
		instance_destroy();
	}
