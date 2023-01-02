if(instance_exists(oPlayer))
{
    draw_sprite_stretched(sStaticHUD, -1,0,0,1280,800);
	draw_set_font(global.font_numb);

/// Lower HUD 

draw_sprite_stretched(sLowerHUD,0, HUDLow_x, HUDLow_y, HUDLow_w, HUDLow_h);


/// Vitality Bar 
draw_set_halign(fa_left)
draw_sprite_stretched(sHUDVitality, -1,144,712,32,26) image_speed = 0.5;
draw_sprite_stretched(sVitalityBar,-1,healthbar_x_location,healthbar_y_location,(oPlayer.player_health/oPlayer.health_max) * health_width, health_height) image_speed = 0.5;


/// NEW VITALITY CODE HERE. If this works, I'll use this for the resolve system, too. 

var _w = sprite_get_width(sVitalityGem);
var _h = sprite_get_height(sVitalityGem);
var _columnsPerRow = 4; 
var _fullVitalityGems = fullVitalityGems; 


var _i = 0; 
repeat (vitalityGems)
	{
		var _row =  floor( _i / _columnsPerRow);
		var _column =  (_i - (floor(_i / _columnsPerRow) * _columnsPerRow) ); 
		var _gemFull = (_fullVitalityGems > 0);
		
		draw_sprite(sVitalityGem,_gemFull, health_gem_x + (_column * _w), health_gem_y + _h - (_row * _h));
		
		_fullVitalityGems--;
		_i++; 
	}
	
	draw_text_transformed_colour(healthbar_x_location - 36, healthbar_y_location, oPlayer.health_string, 2, 2, image_angle, $8c3afc, $8c3afc, $8c3afc, $8c3afc, 1);


/// Vitality LOW Indicator

	 if (oPlayer.player_health/oPlayer.health_max) < 0.25 
        {
            draw_sprite_stretched(sVitalityLow, -1,health_low_x,health_low_y,health_low_w,health_low_h);
        }
		
/// Resolve Bar

draw_sprite_stretched(sHUDResolve, -1,144,756,32,26) image_speed = 0.5;
draw_sprite_stretched(sResolveBar,-1,resolve_x_location,resolve_y_location,(oPlayer.player_resolve/oPlayer.resolve_max) * resolve_width, resolve_height)   image_speed = 0.5;

/// NEW RESOLVE CODE HERE. If this works, I'll use this for the resolve system, too. 

var _Rw = sprite_get_width(sResolveGem);
var _Rh = sprite_get_height(sResolveGem);
var _RcolumnsPerRow = 4; 
var _fullResolveGems = fullResolveGems; 


var _i = 0; 
repeat (resolveGems)
	{
		var _Rrow =  floor( _i / _RcolumnsPerRow);
		var _Rcolumn =  (_i - (floor(_i / _RcolumnsPerRow) * _RcolumnsPerRow) ); 
		var _gemResFull = (_fullResolveGems > 0);
		
		draw_sprite(sResolveGem,_gemResFull, resolve_gem_x + (_Rcolumn * _Rw), resolve_gem_y + _Rh - (_Rrow * _Rh));
		
		_fullResolveGems--;
		_i++; 
	}
	

draw_text_transformed_colour(resolve_x_location - 36, resolve_y_location, oPlayer.resolve_string, 2, 2, image_angle, c_aqua, c_aqua, c_aqua, c_aqua, 1);

/// Vitality LOW Indicator

	 if (oPlayer.player_resolve/oPlayer.resolve_max) < 0.25 
        {
            draw_sprite_stretched(sResolveLow, -1,resolve_low_x,resolve_low_y,resolve_low_w,resolve_low_h);
        }
		
/// Jump Fuel Gauge

draw_sprite_stretched(sJumpFuel,-1,jumpfuel_x_location,jumpfuel_y_location,(oPlayer.player_jump_fuel/oPlayer.jump_fuel_max) * jumpfuel_width, jumpfuel_height);

/// Jump Fuel LOW Indicator 

    if (oPlayer.player_jump_fuel/oPlayer.jump_fuel_max) < 0.25 
        {
            draw_sprite_stretched(sHUDJumpLow, -1,jump_fuel_low_x,jump_fuel_low_y,jump_fuel_low_w,jump_fuel_low_h);
        }
        
/// NEW JUMP FUEL UPGRADE CODE HERE. If this works, I'll use this for the resolve system, too. 

var _Jw = sprite_get_width(sJumpFuelUpgrade);
var _Jh = sprite_get_height(sJumpFuelUpgrade);
var _JcolumnsPerRow = 4; 
var _fullJumpCans = fullJumpCans; 


var _i = 0; 
repeat (jumpCans)
	{
		var _Jrow =  floor( _i / _JcolumnsPerRow);
		var _Jcolumn =  (_i - (floor(_i / _JcolumnsPerRow) * _JcolumnsPerRow) ); 
		var _JumpCanFull = (_fullJumpCans > 0);
		
		draw_sprite(sJumpFuelUpgrade,_JumpCanFull, jumpfuel_upgrade_x + (_Jcolumn * _Jw), jumpfuel_upgrade_y + _Jh - (_Jrow * _Jh));
		
		_fullJumpCans--;
		_i++; 
	}
	
/// Ka'Din Portrait Code + Left VDU (Ka'Din Neutral face is default)

draw_sprite_stretched(VDU_left,0,0,652,128,150);
draw_sprite_stretched(sLeftVDU,0,0,652,128,150);

/// Right VDU Code (Placeholder Leon Pic is Default)

draw_sprite_stretched(VDU_right,0,1152,652,128,150);
draw_sprite_stretched(sRightVDU,0,1152,652,128,150);

/// GEMS Counter Icon 

draw_sprite_stretched(sGemsIcon, 0,gems_icon_x,gems_icon_y,gems_icon_w,gems_icon_h);
draw_set_halign(fa_right)
draw_text_transformed_colour(gems_balance_x, gems_balance_y, oPlayer.gems_balance, 2, 2, image_angle, $8c3afc, $8c3afc, $8c3afc, $8c3afc, 1);

/// Top HUD Message-Ticker Code 

if (ticker_text != "" && alarm[TICKER_ALARM] >= 0) 
	{
  // draw_set_font, draw_set_halign, draw_text_transformed_colour, etc etc etc
	draw_set_font(global.font_main);
	show_debug_message("This should be running!" + string(alarm[TICKER_ALARM])) 
	draw_text_transformed_colour(8,10,ticker_text,1, 1, image_angle, $8c3afc, $8c3afc, $8c3afc, $8c3afc, 1);
	
	}

/// Arrow-Button Draw Code (Up Arrow)

if up_button_clicked
	draw_sprite_stretched(sSelectUp, 2, click_button_up_x, click_button_up_y, click_button_up_width, click_button_up_height);
else if up_button_hover
    draw_sprite_stretched(sSelectUp, 1, click_button_up_x, click_button_up_y, click_button_up_width, click_button_up_height);
else
    draw_sprite_stretched(sSelectUp, 0, click_button_up_x, click_button_up_y, click_button_up_width, click_button_up_height);


/// Arrow-Button Draw Code (Down Arrow)

if down_button_clicked
	draw_sprite_stretched(sSelectDown, 2, click_button_down_x, click_button_down_y, click_button_down_width, click_button_down_height);
else if down_button_hover
    draw_sprite_stretched(sSelectDown, 1, click_button_down_x, click_button_down_y, click_button_down_width, click_button_down_height);
else
    draw_sprite_stretched(sSelectDown, 0, click_button_down_x, click_button_down_y, click_button_down_width, click_button_down_height);
}

///Does the Cursor Code go Here? 

	if  !mouseHUD && instance_exists(oCursor)
		{
			oCursor.cursorSprite = "CursorCrosshairGreen";
			//mouseHUDOn = 0; 
			//mouseNeutralOn = 1;
			//mouseHostileOn = 0;
			//mouseInteractive = 0;
		}
		
		else //if instance_exists(oCursor)
		
		{
			oCursor.cursorSprite = "CursorCrosshairPointer";
		}
	
