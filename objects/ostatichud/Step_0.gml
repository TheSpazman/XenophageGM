/// Stuff that requires a step-script go here for the HUD. 

up_button_hover = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), button_left, button_top, button_right, button_bottom);
down_button_hover = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), down_button_left, down_button_top, down_button_right, down_button_bottom);
mouseHUD = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),HUDBox_x1,HUDBox_y1,HUDBox_x2,HUDBox_y2);



if !up_button_hover
    up_button_clicked = false;
else
{
    if mouse_check_button_pressed(mb_left)
    {
        up_button_clicked = true;
    }
    else if mouse_check_button_released(mb_left) and up_button_clicked
    {
        // action
        up_button_clicked = false; 
    }
}

if !down_button_hover
    down_button_clicked = false;
else
{
    if mouse_check_button_pressed(mb_left)
    {
        down_button_clicked = true;
    }
    else if mouse_check_button_released(mb_left) and down_button_clicked
    {
        // action
        down_button_clicked = false; 
    }
}

/// NEW: Vitality Bar Upgrades Code 



vitalityGems = ( ceil( (oPlayer.health_max-100) / 100)); 
fullVitalityGems = floor( max(0, oPlayer.player_health) / 100); 

oPlayer.health_string = string( max(0, oPlayer.player_health) - (fullVitalityGems * 100) ); 
if (string_length(oPlayer.health_string) == 1) oPlayer.health_string = "0" + oPlayer.health_string;

/// NEW: Resolve Bar Upgrades Code 



resolveGems = ( ceil( (oPlayer.resolve_max-100) / 100)); 
fullResolveGems = floor( max(0, oPlayer.player_resolve) / 100); 

oPlayer.resolve_string = string( max(0, oPlayer.player_resolve) - (fullResolveGems * 100) ); 
if (string_length(oPlayer.resolve_string) == 1) oPlayer.resolve_string = "0" + oPlayer.resolve_string;

/// NEW: Jump Fuel Upgrades Code 



jumpCans = ( ceil( (oPlayer.jump_fuel_max-100) / 100)); 
fullJumpCans = floor( max(0, oPlayer.player_jump_fuel) / 100); 

oPlayer.jumpfuel_string = string( max(0, oPlayer.player_jump_fuel) - (fullJumpCans * 100) ); 
if (string_length(oPlayer.jumpfuel_string) == 1) oPlayer.jumpfuel_string = "0" + oPlayer.jumpfuel_string;


