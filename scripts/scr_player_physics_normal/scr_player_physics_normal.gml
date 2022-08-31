// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_physics_normal(){
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Normal Player Movement and Default Speed / Gravity Values
	
	move = key_right - key_left; // Movement Calculations -- Result here will always be 1, 0, or -1. 
	horizspeed = move * walkspeed; // Horizontal Speed = either 1,0, or -1 * 4. Which will always result in either Moving 4 px left, right, or not at all.
	vertspeed = vertspeed + grav; // Vertical Speed is 0, plus the effects of gravity, which is 0.2. Positive numbers = downward. Negative numbers = Upward.
	
	
	


// COLLISION MECHANICS HERE. 
// Horizontal Collision 

	if (place_meeting(x+horizspeed,y,oWall))
	{
		while (!place_meeting(x+sign(horizspeed),y,oWall))  //While Statements -repeatedly- run checks, as opposed to 'if' statements, which run once.
		{                                                   //In this case, We're making sure the player is flush with the wall.
			x = x + sign(horizspeed); 
		}
		horizspeed = 0;
	}
	x = x + horizspeed;

// Vertical Collision 

	if (place_meeting(x,y+vertspeed,oWall))
	{
		while (!place_meeting(x,y+sign(vertspeed),oWall))  //While Statements -repeatedly- run checks, as opposed to 'if' statements, which run once.
		{                                                   //In this case, We're making sure the player is flush with the wall.
			y = y + sign(vertspeed); 
		}
		vertspeed = 0;
	}
	y = y + vertspeed;
}