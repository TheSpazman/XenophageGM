
function scr_player_jump(){
// Player Jump Animation and Controls
	if (place_meeting(x,y+1,oWall)) && (key_jump)
	{
		vertspeed = -8;
		horizspeed = 0;
		onGround = 0;
		state = "KaDinJump"
	}

	if (vertspeed < 0) && (!key_jump_held) vertspeed = max(vertspeed,0) //Added 8/29/2022 -- Jump key must be held to reach full height, otherwise, subtract value.
}