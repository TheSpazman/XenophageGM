// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_jump_anim(){
   if state = "KaDinJump" 
    {    
    
        if sign(vertspeed) < 0 and state == "KaDinJump"
    {
        if horizspeed < 0 image_xscale = -1
        if horizspeed > 0 image_xscale = 1
        sprite_index = sPlayerJump;
    }
    }
  
        if vertspeed >= 0.25 and !place_meeting(x,y,oWall) and state == "KaDinJump" and (image_index >= image_number - 1) and sprite_index != sPlayerJump
    {    
        sprite_index = sPlayerJump
    }

   
        if vertspeed >= 1 and !place_meeting(x,y,oWall) and state == "KaDinJump" and sprite_index = sPlayerJump
    {    
        sprite_index = sPlayerFall
    }

		if vertspeed >= 3 and !place_meeting(x,y,oWall) and state == "KaDinJump" and sprite_index = sPlayerFall
    {    
        sprite_index = sPlayerFalling
    }
}
