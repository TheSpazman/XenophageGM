/// @description Mouse State Machine here

/// Cursor which follows mouse location

oCursor.x = mouse_x;
oCursor.y = mouse_y;

// At oCursor, Step Event
if (!collision_point(oCursor.x, oCursor.y, oCollisionParent,false,true)) 
	{
    // I'll reset cursor's sprite
    cursor_sprite = sCursorNeutral;
	//show_debug_message("This script is playing correctly! (Green)");
	}
