window_set_caption(state)
//show_debug_message(animtimer)
//show_debug_message(key_pressed)
//show_debug_message(onGround)
//show_debug_message(controller)
switch (state)
{
	case "KaDinIdle":
	{
		scr_debug_keys();
		scr_player_fuel_regen();
		//scr_mouse_cursor_switch();
		scr_player_move();
		scr_set_state_sprite(sPlayer,1,0);
		scr_player_jump();
		scr_player_physics_normal();
		scr_player_animate_move();
		scr_player_idle_anim();
		animtimer = 0;
		
		if key_left || key_right 
		{
			state = "KaDinMoving"
		}
		
		if key_jump 
		{
			state = "KaDinUpwards"
		}
		
		if key_down
		{
		   state = "KaDinCrouch"	
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
		scr_debug_keys();
		scr_player_fuel_regen();
		//scr_mouse_cursor_switch();
		scr_player_move();
		scr_player_jump();
		scr_player_physics_normal();
		scr_player_animate_move();
		
		if animtimer >= max_animtimer && (horizspeed == 0 && vertspeed == 0)
		{
			state = "KaDinIdle"	
		}
		
	}
	break;

	case "KaDinUpwards": 
	case "KaDinJumpPeak":
	case "KaDinJumpFalling":
	{
		//scr_mouse_cursor_switch();
		scr_player_jump_anim2();
		scr_player_move();
		scr_player_physics_normal();
		scr_player_animate_move();
		scr_player_jump();
		animtimer = 0;
		if (place_meeting(x,y+1,oWall)) && !key_jump
		{
			//show_debug_message("Player has landed.")
			image_speed = 1
			state = "KaDinMoving"
		}
		
	}
	
	break;
	
	case "KaDinCrouch":  
	{
		scr_player_fuel_regen();
		//scr_mouse_cursor_switch();
		scr_player_move();
		scr_player_physics_normal();
		scr_player_animate_move();
		if (!key_down) 
			state = "KaDinIdle" 
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
	default:
		throw ("Illegal State! (Fix this, Spaz.)" + state)
}

