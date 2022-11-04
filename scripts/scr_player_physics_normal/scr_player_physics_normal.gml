// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_physics_normal(){
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Normal Player Movement and Default Speed / Gravity Values
	
	move = key_right - key_left; // Movement Calculations -- Result here will always be 1, 0, or -1.  // Horizontal Speed = either 1,0, or -1 * 4. Which will always result in either Moving 4 px left, right, or not at all.
	vertspeed = vertspeed + grav; // Vertical Speed is 0, plus the effects of gravity, which is 0.2. Positive numbers = downward. Negative numbers = Upward.
	
	
	


// OLD COLLISION MECHANICS HERE. 
// Horizontal Collision 

//	if (place_meeting(x+horizspeed,y,oWall))
//	{
//		while (abs(horizspeed)> 0.1)  //While Statements -repeatedly- run checks, as opposed to 'if' statements, which run once.
//		{                             
//			horizspeed *= 0.5;//In this case, We're making sure the player is flush with the wall.
//			if (!place_meeting(x + horizspeed, y, oWall)) x += horizspeed; 
//		}
//		horizspeed = 0;
//	}
//	x += horizspeed;
	
	 // Move up slope
//    if (place_meeting(x + sign(horizspeed), y, oWall) && !place_meeting(x + sign(horizspeed), y - 1, oWall))
//        --y;
    
    // Move down slope
//    if (!place_meeting(x + sign(horizspeed), y, oWall) && !place_meeting(x + sign(horizspeed), y + 1, oWall) && place_meeting(x + sign(horizspeed), y + 2, oWall))
//        ++y; 

// Vertical Collision 

//	if (place_meeting(x,y+vertspeed,oWall))
//	{
//		if (vertspeed > 0) canJump = 10; 
//		while (abs(vertspeed) > 0.1)//While Statements -repeatedly- run checks, as opposed to 'if' statements, which run once.
//		{                                                   //In this case, We're making sure the player is flush with the wall.
//			vertspeed *= 0.5;
//			if (!place_meeting(x,y + vertspeed, oWall)) y += vertspeed;
//		}
//		vertspeed = 0;
//	}
//	y += vertspeed;
// Vertical

//ACCELERATION / FRICTION SCRIPTING // 

		if move != 0 
		
		{
			
			if (move == 1) horizspeed = min(walkspeed, horizspeed + accel); //accelerate going right
			if (move == -1) horizspeed = max(-walkspeed, horizspeed - accel); //accelerate going left
			
		}    
		
	else 
	
		{
			if (horizspeed > 0) horizspeed = max(0, horizspeed - f_riction); //friction going right
			if (horizspeed < 0) horizspeed = min(0, horizspeed + f_riction); //friction going left
			
		}






// NEW ANIMATION CODE HERE + SLOPES 

    repeat(abs(vertspeed))
    {
        if (!place_meeting(x, y + sign(vertspeed), oWall))
            y += sign(vertspeed); 
        else {
            vertspeed = 0;
			canJump = 1;
            break;
        }
    }

    // Horizontal
    repeat(abs(horizspeed))
    {
        // Move up slope
        if (place_meeting(x + sign(horizspeed), y, oWall) &&
            place_meeting(x + sign(horizspeed), y - 1, oWall) &&
            !place_meeting(x + sign(horizspeed), y - 2, oWall))
        {
            y -= 2;
        }
        else if (place_meeting(x + sign(horizspeed), y, oWall) && 
                !place_meeting(x + sign(horizspeed), y - 1, oWall))
        {
            --y;
        }
    
        // Move down slope
        if (!place_meeting(x + sign(horizspeed), y, oWall) &&
            !place_meeting(x + sign(horizspeed), y + 1, oWall) &&
            !place_meeting(x + sign(horizspeed), y + 2, oWall) &&
            place_meeting(x + sign(horizspeed), y + 3, oWall))
        {
            y += 2;
        }
        else if (!place_meeting(x + sign(horizspeed), y, oWall) &&
                !place_meeting(x + sign(horizspeed), y + 1, oWall) &&
                place_meeting(x + sign(horizspeed), y + 2, oWall))
        {
            ++y; 
        }

        if (!place_meeting(x + sign(horizspeed), y, oWall))
            x += sign(horizspeed); 
        else {
            horizspeed = 0;
            break;
        }
    }

}

