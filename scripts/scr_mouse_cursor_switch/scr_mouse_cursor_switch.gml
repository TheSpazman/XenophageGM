// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mouse_cursor_switch(){
if controller == 0
{
window_set_cursor (cr_none);
cursor_sprite = sCursor;
}

if controller == 1
{
	window_set_cursor (cr_none);
	cursor_sprite = sNoCursor;
}
}