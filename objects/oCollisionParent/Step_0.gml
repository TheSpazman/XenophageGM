/// @description Detect for Collision with Mouse.

//ID of Parent-object 
my_id = instance_position(mouse_x, mouse_y, oCollisionParent);

//Checking for child object 
	if my_id != noone 
		{
			switch(my_id.object_index)
				{
					//Do something based on what-kind of object the mouse-cursor is hovering over. Interactives Here. 
					case oGEMS1: case oGEMS10: case oGEMS25: case oGEMS5: case oGEMS100: case oGEMS250: case oVitalityGem: case oFuelCanister: case oResolveGem:
						cursor_sprite = sCursorInteractive
						show_debug_message("This should be turning yellow!");
					break; 
										
					// Hostiles Here. 
					
					case oHostileBox:
						cursor_sprite = sCursorHostile
						show_debug_message("This should be turning red!");
					break; 
					
					//HUD and Menu Elements Here. 
					
					case oStaticHUD: case oTitleMenu:
							{
								cursor_sprite = sCursor
								show_debug_message("This should be turning into a cursor!");	
							}
					break; 
					
					// Default Here 
					default:
						cursor_sprite = sCursorInteractive
						show_debug_message("Hovering over Nothing at all! (nothing at all!) Alternatively: Something is broken!");
					break; 
				}
		}
	else if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0, 652, 1280, 800) && instance_exists(oStaticHUD)
		{
			cursor_sprite = sCursor
			show_debug_message("This should be turning into a cursor!");	
		}





