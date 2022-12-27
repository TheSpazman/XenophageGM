// GAME PHYSICS //

horizspeed = 0;                                       // Horizontal Speed.
vertspeed = 0;                                        // Vertical Speed. 
grav = 0.2;                                           // Gravity. 
walkspeed = 4;                                        // Player Walking Speed. 
canJump = 0;										  // Can the Player Jump now?
vertJump = -6;										  // Speed when the player jumps.
accel = 0.4;											  // Max horizontal speed (Momentum / Accel)
f_riction = 0.3;                                        // Player Friction



// PLAYER CONTROL VARIABLES AND CONSTANTS //
controller = 0;																// Is the player using a controller? 0 for No, 1 for Yes. 
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);				// Player Moves Left.
key_right = keyboard_check(ord("D")) || keyboard_check (vk_right);			 // Player Moves Right.
key_down = keyboard_check(ord("S")) || keyboard_check (vk_down);			 // Player Crouches + Presses down. 
key_inven = keyboard_check(ord("I"))										// Player uses Inventory hotkey.
key_jump = keyboard_check_pressed(vk_space);								// Player Jumps.
key_jump_held = keyboard_check(vk_space);									// Player Holds the Jump Button.
mouse_clicked = mouse_check_button_pressed(mb_left)							// Left Mouse-Button Clicked.
move = 0;																	// Player is moving.
key_pressed = 0																// Player does / does not have a key pressed.
onGround = 0																// Whether the player is on the ground or not.
c_thresh = 0.2;																// Controller Detection Threshold

// DEBUG KEYS // 

stop_hurting_yourself = keyboard_check_pressed(vk_pageup);                           // Reduces Ka'Din's Vitality by 10 (DEBUG ONLY)
stop_mindfcking_yourself = keyboard_check_pressed(vk_pagedown);                      // Reduces Ka'Din's Resolve by 10 (DEBUG ONLY) 




// PLAYER VITALS // 

player_health = 100; 
health_max = player_health; 
health_width = 140; 
health_height = 26; 
healthbar_x_location = 228; // All 'location' stats are in actual-pixels.
healthbar_y_location = 712; 

player_resolve = 100; 
resolve_max = player_resolve; 
resolve_width = 140;
resolve_height = 26; 
resolve_x_location = 228; 
resolve_y_location = 756; 


// GEMS / MONEY SYSTEM VARIABLES // 

gems_balance = 0; 
gems_icon_w = 18
gems_icon_h = 28
gems_icon_x = 810
gems_icon_y = 708

gems_balance_x = 1100
gems_balance_y = 708


// JUMP FUEL MECHANICS + VARIABLES // 
player_jump_fuel = 100;                                                 //This number will change depending on if Ka'Din has picked up a Wingpack.
jump_fuel_loss_rate = 7;                                            //This number will change depending on if Ka'Din has picked up any WP Upgrades.
jump_fuel_regen_rate = 7;
jump_fuel_max = player_jump_fuel; 
jump_fuel_low_x = 810
jump_fuel_low_y = 752
jump_fuel_low_w = 38
jump_fuel_low_h = 10
weight = 0.5;														// Player Weight
vertJet = 0.12;														 // Player Wingpack Vertical Thrust Power
jumpfuel_width = 140;
jumpfuel_height = 18;
jumpfuel_x_location = 812; 
jumpfuel_y_location = 764; 

player_hud_item_screen = 0; 

// VDU Code + Variables 

VDU_left = sKaDinNeutral; 
VDU_right = sLeonHUDPlaceholder; 




// ANIMATION SYSTEM //
animframe = 0;                                        // Animation System Frame
animdirec = 0;										  // Where the mouse-cursor is!
animtimer = 0;                                        // Timer! 
max_animtimer = 10;

// CURRENT PLAYER STATE // 
state = "KaDinMoving";