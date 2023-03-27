/// Static HUD Code

HudX = camera_get_view_x(view_camera[0]);
HudY = camera_get_view_y(view_camera[0]);

// Lower HUD Placement Variables 

HUDLow_w = 1280;
HUDLow_h = 148;
HUDLow_x = 0; 
HUDLow_y = 652;


// Vitality Bar Variables 

health_width = 140; 
health_height = 26; 
healthbar_x_location = 228; // All 'location' stats are in actual-pixels.
healthbar_y_location = 712;
health_low_w = 18;
health_low_h = 18;
health_low_x = 352;
health_low_y = 716;
health_gem_x = 372;
health_gem_y = 686; 
health_gem_width = 24;
health_gem_height = 26;

// Resolve Bar Variables

resolve_width = 140;
resolve_height = 26; 
resolve_x_location = 228; 
resolve_y_location = 756; 
resolve_low_w = 18;
resolve_low_h = 18;
resolve_low_x = 352;
resolve_low_y = 760;
resolve_gem_x = 372;
resolve_gem_y = 730; 
resolve_gem_width = 24;
resolve_gem_height = 26;

// GEMS Balance Variables

gems_icon_w = 18;
gems_icon_h = 28;
gems_icon_x = 810;
gems_icon_y = 708;

gems_balance_x = 1100;
gems_balance_y = 708;

// Jump Fuel Gauge Variables

jump_fuel_low_x = 810;
jump_fuel_low_y = 752;
jump_fuel_low_w = 38;
jump_fuel_low_h = 10;

jumpfuel_width = 140;
jumpfuel_height = 18;
jumpfuel_x_location = 812; 
jumpfuel_y_location = 764; 
jumpfuel_upgrade_x = 884;
jumpfuel_upgrade_y = 746;

//VDU Variables

VDU_left = sKaDinNeutral; 
VDU_right = sLeonHUDPlaceholder; 


//Message Ticker Variables

ticker_text = "";
ticker_display_time = 5;
TICKER_ALARM = 0;
ticker_x = 8;
ticker_y = 10;

// Click-Button Variables (Up)

click_button_up_width = 26;
click_button_up_height = 44;
click_button_up_x = 1122;
click_button_up_y = 700; 
up_button_clicked = 0;
up_button_hover = 0;
button_left = 1122;
button_right = 1146;
button_top = 700;
button_bottom = 742;

// Click-Button Variables (Down)

click_button_down_width = 26;
click_button_down_height = 44;
click_button_down_x = 1122;
click_button_down_y = 750; 
down_button_clicked = 0;
down_button_hover = 0;
down_button_left = 1122;
down_button_right = 1146;
down_button_top = 750;
down_button_bottom = 784;

// Mouse-Reticle Variables (When the Mouse is meant to change appearance)

mouseNeutral = 0; //Set to 1 when in Neutral Mode 
mouseNeutralOn =1;
mouseHostile = 0; //Set to 1 when over a Hostile Entity
mouseHostileOn =0;
mouseHUD = 0; // Set to 1 when over the HUD or a Menu
mouseHUDOn =0;
mouseInteractive = 0; // Set to 1 when over an interactive object
mouseInteractiveOn =0;

// Lower HUD Variables for Mouse-Reticle

HUDBox_x1 = 0;
HUDBox_x2 = 1280; 
HUDBox_y1 = 652;
HUDBox_y2 = 800; 