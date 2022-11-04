// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_idle_anim()
{
	
	animdirec = point_direction(x,y,mouse_x,mouse_y);
	
			if distance_to_point(mouse_x,mouse_y) < 24  
				{
					animframe  = 8                                //This is meant to change the player's sprite to a front-facing idle image when within a range of 24px.
					show_debug_message("Player is idle, facing forward.")
				}

		else 
			
		{
				
		if (animdirec>=337.5)  
			{
				animframe=0
			}
				
		else  animframe = round(animdirec/45)
		
			sprite_index = sPlayerIdle
			image_index = animframe	
			show_debug_message("Idle animation is now playing.")
			
			
		}

}
