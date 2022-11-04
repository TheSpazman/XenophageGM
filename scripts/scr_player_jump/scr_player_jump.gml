
function scr_player_jump(){
// Player Jump Animation and Controls
	if (canJump > 0) && (key_jump)  
	{
		vertspeed = vertJump;
		horizspeed = 0;
		canJump = 0;
		state = "KaDinUpwards"
	}

	if (vertspeed < 0) && (!key_jump_held) vertspeed = max(vertspeed,0) //Added 8/29/2022 -- Jump key must be held to reach full height, otherwise, subtract value.
}