// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_animate_move() {

    if place_meeting(x,y+1,oWall) && state = "KaDinIdle" && horizspeed = 0 
    {
 
        sprite_index = sPlayer;
    }
    
    if  !key_left && !key_right && sign(vertspeed) =0 && state = "KaDinIdle" 
    {
      
        sprite_index = sPlayer;
    }
   
   
    if sign(horizspeed) < 0 && vertspeed = 0 && state = "KaDinMoving"
    {
        image_xscale = -1;
        sprite_index = sPlayerRun;

    }
	
    if sign(horizspeed) > 0 && vertspeed = 0 && state = "KaDinMoving" 
    {
    
        image_xscale = 1;
        sprite_index = sPlayerRun;

    }




}

