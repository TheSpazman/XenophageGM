// GAME PHYSICS //

horizspeed = 0;                                       // Horizontal Speed.
vertspeed = 0;                                        // Vertical Speed. 
grav = 0.2;                                           // Gravity. 
walkspeed = 4;                                        // Player Walking Speed. 

// PLAYER CONTROL VARIABLES AND CONSTANTS //
controller = 0;                                       // Is the player using a controller? 0 for No, 1 for Yes. 
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left); // Player Moves Left.
key_right = keyboard_check(ord("D")) || keyboard_check (vk_right); // Player Moves Right.
key_inven = keyboard_check(ord("I")) // Player uses Inventory hotkey.
key_jump = keyboard_check_pressed(vk_space); // Player Jumps.
key_jump_held = keyboard_check(vk_space);  // Player Holds the Jump Button.
move = 0;  // Player is moving.
key_pressed = 0 // Player does / does not have a key pressed.

// ANIMATION SYSTEM //
animframe = 0;                                        // Animation System Frame
animdirec = 0;                                        // Animation System Direction
animtimer = 0;                                        // Timer! 
max_animtimer = 10;
state = "KaDinMoving";