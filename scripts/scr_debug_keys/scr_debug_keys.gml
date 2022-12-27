
function scr_debug_keys(){
	
//DEBUG KEYS ONLY // 

stop_hurting_yourself = keyboard_check_pressed(vk_pageup);                           // Reduces Ka'Din's Vitality by 10 (DEBUG ONLY)
stop_mindfcking_yourself = keyboard_check_pressed(vk_pagedown);                      // Reduces Ka'Din's Resolve by 10 (DEBUG ONLY) 

if (stop_hurting_yourself)
{
	player_health -= 10
	show_debug_message("Ouch!")
}

if (stop_mindfcking_yourself)
{
	player_resolve -= 10
	show_debug_message("Ouch! (Again)")
}
}