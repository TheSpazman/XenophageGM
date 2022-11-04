
function scr_player_move()
{
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Getting Player Input.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left); // Player Moves Left.
	key_right = keyboard_check(ord("D")) || keyboard_check (vk_right); // Player Moves Right.
	key_down = keyboard_check(ord("S")) || keyboard_check (vk_down); // Player Moves Down / Crouches.
	key_inven = keyboard_check(ord("I")) // Player uses Inventory hotkey.
	key_jump = keyboard_check_pressed(vk_space); // Player Jumps.
	key_jump_held = keyboard_check(vk_space);  // Player Holds the Jump Button.
	mouse_clicked = mouse_check_button_pressed(mb_left) // Checks for Player clicking ther Left Mouse Button / Fire Button
	
	
//Checking for Controller.

if (key_left) || (key_right) || (key_jump) || (mouse_clicked) || (key_down)
{
	controller = 0; 
	key_pressed = 1;
}

if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2) 
{
	key_left = gamepad_axis_value(0, gp_axislh) < c_thresh;
	key_right = gamepad_axis_value(0, gp_axislh) > c_thresh; 
	controller = 1; 
	key_pressed = 1;
}

if (gamepad_button_check_pressed(0,gp_shoulderlb))
{
	key_jump = 1;
	controller = 1;
	key_pressed = 1; 
}

if (gamepad_button_check(0,gp_shoulderlb))
{
	key_jump_held = 1;	
	key_pressed = 1; 
}

if (gamepad_button_check(0,gp_stickl))
{
	key_down = 1; 
	controller = 1; 
	key_pressed = 1;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}