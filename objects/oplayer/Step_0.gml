show_debug_message(state)
show_debug_message(animtimer)
show_debug_message(key_pressed)
switch (state)
{
	case "KaDinIdle":
	{
		
		scr_animation_end();
		scr_player_move();
		scr_set_state_sprite(sPlayer,1,0);
		scr_player_physics_normal();
		scr_player_animate_move();
		animtimer = 0;
		
		if key_left || key_right  || key_jump
		{
			state = "KaDinMoving"
		}
		
	}
	break;
	case "KaDinMoving":  
	{
		if !key_left && !key_right && !key_jump 
		{
		animtimer +=1;
		}
		else 
		{
			animtimer = 0;
		}
		
		scr_player_move();
		scr_player_physics_normal();
		scr_player_animate_move();
		scr_player_jump();
		if animtimer >= max_animtimer && (horizspeed = 0 && vertspeed = 0)
		{
			state = "KaDinIdle"	
		}
	}
	break;
	case "KaDinJump":  
	{
		scr_player_jump_anim();
		scr_player_move();
		scr_player_physics_normal();
		scr_player_animate_move();
		animtimer = 0;
		if (place_meeting(x,y+1,oWall)) && !key_jump_held
		{
			state = "KaDinMoving"
		}
	}
	break;
	case "KaDinCrouch":  
	{
	}
	break;
	case "KaDinShoot":  
	{
	}
	break;
	case "KaDinDead": 
	{
	}
	break; 
	case "KaDinInteract": 
	{
	}
	break; 
}

