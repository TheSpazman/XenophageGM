// This script helps to animate Ka'Din's Jump / Hover / Fall animation
// 
function scr_player_jump_anim2()

{
	
switch(state)
	{
		case "KaDinUpwards":
			{
				 if sprite_index != sPlayerJump
				 
				 {
					 
					 if sprite_index != sPlayerRising
						{
						image_speed = 2
						sprite_index = sPlayerRising 
						image_index = 0
						}
					
					else
					
						{
							if image_index >= image_number - 1
								{
									sprite_index = sPlayerJump
									image_index = 0 
								}
						}	
				 }
					if horizspeed < 0 image_xscale = -1
					if horizspeed > 0 image_xscale = 1
					show_debug_message("Player is moving upwards.")
					if vertspeed > 0 and !place_meeting(x,y,oWall) 
						{
							state = "KaDinJumpPeak"
						}
					
				break;
			}
			
		case "KaDinJumpPeak":
			{
				 if sprite_index != sPlayerFall
				 
					{
						image_speed = 1
						sprite_index = sPlayerFall
						image_index = 0
					}
				 	
				if image_index >= image_number - 1
						{
							
							state = "KaDinJumpFalling"
							show_debug_message("Player is at the peak of the jump")
						}
				break;
				
			}
			
		case "KaDinJumpFalling":
			{
				image_speed = 0
				
				 if sprite_index != sPlayerFalling
					sprite_index = sPlayerFalling
					image_index = 0
				 
				if horizspeed < 0 image_xscale = -1
				if horizspeed > 0 image_xscale = 1
		
				break;
			}
}

}