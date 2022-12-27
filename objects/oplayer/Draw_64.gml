///Desired Font for HUD graphics 
draw_set_font(global.font_numb);

/// Vitality Bar 
draw_sprite_stretched(sVitalityBar,-1,healthbar_x_location,healthbar_y_location,(player_health/health_max) * health_width, health_height) image_speed = 2;
draw_text_transformed_colour(healthbar_x_location - 36, healthbar_y_location, player_health, 2, 2, image_angle, $8c3afc, $8c3afc, $8c3afc, $8c3afc, 1);
/// Resolve Bar
draw_sprite_stretched(sResolveBar,-1,resolve_x_location,resolve_y_location,(player_resolve/resolve_max) * resolve_width, resolve_height)   image_speed = 2;
draw_text_transformed_colour(resolve_x_location - 36, resolve_y_location, player_resolve, 2, 2, image_angle, c_aqua, c_aqua, c_aqua, c_aqua, 1);
/// Jump Fuel Gauge
draw_sprite_stretched(sJumpFuel,0,jumpfuel_x_location,jumpfuel_y_location,(player_jump_fuel/jump_fuel_max) * jumpfuel_width, jumpfuel_height);

	if (player_jump_fuel/jump_fuel_max) < 0.25 
		{
			draw_sprite_stretched(sHUDJumpLow, 0,jump_fuel_low_x,jump_fuel_low_y,jump_fuel_low_w,jump_fuel_low_h);
		}
		
/// Ka'Din Portrait Code + Left VDU (Ka'Din Neutral face is default)

draw_sprite_stretched(VDU_left,0,0,652,128,150);
draw_sprite_stretched(sLeftVDU,0,0,652,128,150);

/// Right VDU Code (Placeholder Leon Pic is Default)

draw_sprite_stretched(VDU_right,0,1152,652,128,150);
draw_sprite_stretched(sRightVDU,0,1152,652,128,150);

/// GEMS Counter 

draw_sprite_stretched(sGemsIcon, 0,gems_icon_x,gems_icon_y,gems_icon_w,gems_icon_h);
draw_text_transformed_colour(gems_balance_x, gems_balance_y, gems_balance, 2, 2, image_angle, $8c3afc, $8c3afc, $8c3afc, $8c3afc, 1);




