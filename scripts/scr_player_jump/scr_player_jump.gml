
function scr_player_jump(){
// Player Jump Animation and Controls
	if ((key_jump || key_jump_held ) && player_jump_fuel > 0)
	{
		vertspeed = vertJump;
		player_jump_fuel -= jump_fuel_loss_rate;
		state = "KaDinUpwards"; 
		onGround = 0
	}
	else 
	{
		vertspeed += grav;
		//state = "KaDinJumpFalling";
	}

	
	//if (canJump > 0) && (key_jump)   OLD JUMP CODE IN COMMENTS
	//{
		
		
	//	canJump = 0;
	//	state = "KaDinUpwards"
	//}

	if (vertspeed < 0) && (!key_jump_held) vertspeed = max(vertspeed,0) //Added 8/29/2022 -- Jump key must be held to reach full height, otherwise, subtract value.
}