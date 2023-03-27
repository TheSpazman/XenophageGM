// GAME PHYSICS //

horizspeed = 0;
vertspeed = 0;
grav = 0.1;
walkspeed = 4;
canJump = 0;
vertJump = -5;
accel = 0.3;
f_riction = 0.7;
JumpFuelDelay = 0;
deltaTime = delta_time / 1000000 

// PLAYER CONTROL VARIABLES AND CONSTANTS //

controller = 0;
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check (vk_right);
key_down = keyboard_check(ord("S")) || keyboard_check (vk_down);
key_inven = keyboard_check(ord("I"))
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
mouse_clicked = mouse_check_button_pressed(mb_left);
move = 0;
key_pressed = 0;
onGround = 0;
c_thresh = 0.2;

// DEBUG KEYS // 

stop_hurting_yourself = keyboard_check_pressed(vk_pageup);
stop_mindfcking_yourself = keyboard_check_pressed(vk_pagedown);

// PLAYER VITALS // 

player_health = 99; 
health_max = 99; 
player_resolve = 99; 
resolve_max = 99; 

health_string = string(player_health);
resolve_string = string(player_resolve);


// GEMS / MONEY SYSTEM VARIABLES // 

gems_balance = 0; 

// JUMP FUEL MECHANICS + VARIABLES // 

player_jump_fuel = 99;                                                 //This number will change depending on if Ka'Din has picked up a Wingpack.
jump_fuel_loss_rate = 18;                                            //This number will change depending on if Ka'Din has picked up any WP Upgrades.
jump_fuel_regen_rate = 4;
jump_fuel_max = 99; 
jumpfuel_string = string(player_jump_fuel);
weight = 0.5;                                                        // Player Weight
vertJet = 0.12;                                                         // Player Wingpack Vertical Thrust Power
player_hud_item_screen = 0; 

// ANIMATION SYSTEM //

animframe = 0;                                    
animdirec = 0;                                          // Where the mouse-cursor is!
animtimer = 0;                                       
max_animtimer = 10;

// CURRENT PLAYER STATE // 

state = "KaDinMoving";