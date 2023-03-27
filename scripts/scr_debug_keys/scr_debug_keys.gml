
function scr_debug_keys(){
	
//DEBUG KEYS ONLY. COMMENT THESE OUT FOR ACTUAL RELEASE. // 

stop_hurting_yourself = keyboard_check_pressed(vk_pageup);                                 // Reduces Ka'Din's Vitality by 10 (DEBUG ONLY)
stop_mindfcking_yourself = keyboard_check_pressed(vk_pagedown);                            // Reduces Ka'Din's Resolve by 10 (DEBUG ONLY) 
start_healing_yourself = keyboard_check_pressed(vk_home);                                  // Increases Ka'Din's Vitality by 10 (DEBUG ONLY)
start_psychoanalyzing_yourself = keyboard_check_pressed(vk_end);                           // Increases Ka'Din's Resolve by 10 (DEBUG ONLY)
start_selfcare = keyboard_check_pressed(vk_delete);                                        // Resets Ka'Din's Stats to Max (DEBUG ONLY)
display_example_ticker = keyboard_check_pressed(vk_f12);                           // Displays the Debug-Message Ticker (DEBUG ONLY) 
crash_this_game = keyboard_check_pressed(vk_pause);                                        // Switches Ka'Din to an Invalid State / Crashes Game (DEBUG ONLY)

if (stop_hurting_yourself)
{
	oPlayer.player_health -= 10
	set_ticker_text("DEBUG: Vitality Reduced by 10")
	show_debug_message("Ouch!")
}

if (stop_mindfcking_yourself)
{
	oPlayer.player_resolve -= 10
	set_ticker_text("DEBUG: Resolve Reduced by 10")
	show_debug_message("Ouch! (Again)")
}

if (start_healing_yourself)
{
	oPlayer.player_health += 10
	set_ticker_text("DEBUG: Vitality Increased by 10")
	show_debug_message("Yay!")
}

if (start_psychoanalyzing_yourself)
{
	oPlayer.player_resolve += 10
	set_ticker_text("DEBUG: Resolve Increased by 10")
	show_debug_message("Yay! (Again)")
}

if (start_selfcare)
{
	oPlayer.player_health = oPlayer.health_max
	oPlayer.player_resolve = oPlayer.resolve_max
	set_ticker_text("DEBUG: Stats Reset to Max")
	show_debug_message("Stats Restored!")
}

if (display_example_ticker)
{
	set_ticker_text("The Message Ticker Works Correctly! (Should disappear after 5 seconds.)")
}

if (crash_this_game)
{
	oPlayer.state = "Invalid State for State Testing Purposes"
}

}