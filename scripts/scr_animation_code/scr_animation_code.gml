// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_animation_code(){
//Animation
// '!' in a command implies the opposite-meaning of that command. A 'Not!' statement, more or less.


	var animframe = 0 //This picks out a frame number based on the direction the player is facing. Moving counter-clockwise from right, 0 = right, 7 = down-right, and 8 is center.
	var animdirec = point_direction(x,y,mouse_x,mouse_y)



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
		if (place_meeting(x,y+1,oWall)) sprite_index = sPlayerIdle 
	}
		else
	{
		image_speed = 1; 
		if (move == 0)
		{
			if distance_to_point(mouse_x,mouse_y) < 24  {animframe  = 8 } //This is meant to change the player's sprite to a front-facing idle image when within a range of 24px.
			else {
			if (animdirec>=337.5)  animframe=0
			else  animframe= round(animdirec/45)
			}
			sprite_index = sPlayerIdle
			image_index = animframe	
			show_debug_message("Idle animation is now playing.")
		}
		else
		{
			sprite_index = sPlayerRun;
			show_debug_message("Player is running.");
		}
	}

	if (horizspeed != 0) image_xscale = sign(horizspeed); 
}