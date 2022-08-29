/// Oh, so THIS is how to comment!







///////////////////////////
// Checks for when and if the player is moving, and returns a true or false value. 
///////////////////////////

if horizspeed != 0 || vertspeed !=0
{
	show_debug_message("Player is now moving.");
}
else
{
	show_debug_message("Player is not pushing buttons.");
}

///////////////////////////
////////////////////////////
// Movement Calculations -- Result here will always be 1, 0, or -1. 
////////////////////////////
var move = key_right - key_left; 


// Walkspeed is 4, so this will always move the player 4 pixels to the left or right,
// Or not at all.
horizspeed = move * walkspeed; 
vertspeed = vertspeed + grav;
///////////////////////////////////
// Player Jump Animation and Controls
///////////////////////////////////

stateFreemove = function()
{
	if (place_meeting(x,y+1,oWall)) and (key_jump)
	{
		vertspeed = -8;
	}

	if (vertspeed < 0) && (!key_jump_held) vertspeed = max(vertspeed,0) //Added 8/29/2022 -- Jump key must be held to reach full height, otherwise, subtract value.

// Horizontal Collision 

if (place_meeting(x+horizspeed,y,oWall))
{
	//While Statements -repeatedly- run checks, as opposed to 'if' statements, which run once.
	//In this case, We're making sure the player is flush with the wall.
		while (!place_meeting(x+sign(horizspeed),y,oWall))
		{
			x = x + sign(horizspeed);
		}
		horizspeed = 0;
}

x = x + horizspeed;

// Vertical Collision 

if (place_meeting(x,y+vertspeed,oWall))
{
	//While Statements -repeatedly- run checks, as opposed to 'if' statements, which run once.
	//In this case, We're making sure the player is flush with the wall.
		while (!place_meeting(x,y+sign(vertspeed),oWall))
		{
			y = y + sign(vertspeed);
		}
		vertspeed = 0;
}

y = y + vertspeed;

//
//
//
//

//Animation
// '!' in a command implies the opposite-meaning of that command. A 'Not!' statement, more or less.
var frame = 0 //This picks out a frame number based on the direction the player is facing. Moving counter-clockwise from right, 0 = right, 7 = down-right, and 8 is center.
var direc = point_direction(x,y,mouse_x,mouse_y)



	//if not touching solid, player begins jump sprite, stops on last frame
if (!place_meeting(x,y+1,oWall))
{
{
	        sprite_index = sPlayerJump;
		    if (image_index == 1) image_speed = 0;
}
	//if player is moving down, image speed is set to 1 and fall start begins
	if (sign(vertspeed) > 0)
	{
	    sprite_index = sPlayerFalling;
	}
	//Player stands after landing
	if (place_meeting(x,y+1,oWall)) sprite_index = sPlayerIdle;
	
		
   
	
}

else
{
	
	image_speed = 1; 
	if (move == 0)
	{
		
		
		if distance_to_point(mouse_x,mouse_y) < 24  {frame  = 8 } //This is meant to change the player's sprite to a front-facing idle image when within a range of 24px.
		else {
		if (direc>=337.5)  frame=0
		else  frame= round(direc/45)
		}
		sprite_index = sPlayerIdle
		image_index = frame	
		show_debug_message("Idle animation is now playing.")
	}
	else
	{
		sprite_index = sPlayerRun;
		show_debug_message("Player is running.");
	}
}

if (horizspeed != 0) image_xscale = sign(horizspeed); 

//////////////////////////////////
// Custom Code for making the player face the angle of the mouse cursor. (Unfinished)
//////////////////////////////////


	