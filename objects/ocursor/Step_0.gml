/// Cursor which follows mouse location

oCursor.x = mouse_x;
oCursor.y = mouse_y;

switch(cursorSprite)  // This is the 'Threat Detector' and GUI-pointer code I've been looking to do for a bit. I'll detail these a little bit. 
	{
		case "CursorCrosshairGreen" :   // The default / 'neutral' state for the crosshair, when over nothing interactive nor hostile. 
		{
			show_debug_message("Green Crosshair Should be Playing Correctly!")
			cursor_sprite = sCursorNeutral 
		}
		break;
		
		case "CursorCrosshairYellow" : // The 'interactive object' state for the crosshair, when over items of interest. 
		{
			show_debug_message("Yellow Crosshair Should be Playing Correctly!")
			cursor_sprite = sBigRedBox
		}
		break;
		
		case "CursorCrosshairNone" : // The 'interactive object' state for the crosshair, when over items of interest. 
		{
			show_debug_message("No Mouse Cursor Present in Main Menu!")
			cursor_sprite = sNoCursor
			
		}
		break;
		
		case "CursorCrosshairRed" : // The 'Hostile / Hazard' state for the crosshair, when over enemies or possibly denoting damaging areas. 
		{
			
		}
		break;
		
		case "CursorCrosshairPointer" : // The 'Menu / HUD' state for the crosshair, which turns it into a pointer while in menus and the lower HUD.
		{								// Should return back to neutral state when NOT over the HUD. 
			show_debug_message("Pointer Crosshair Should be Playing Correctly!")
			cursor_sprite = sCursor 
		}
		break;
		default: 
			
			
	}
