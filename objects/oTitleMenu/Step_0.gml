// Getting Player Input
upKeyKB = keyboard_check_pressed(vk_up);
downKeyKB = keyboard_check_pressed(vk_down); 
acceptKeyKB = keyboard_check_pressed (vk_space) || keyboard_check_pressed (vk_enter); 
AxisInput = gamepad_axis_value(0, gp_axislv)
AxisReset = true 

// Move Through Menu Options 

//pos += downKeyKB - upKeyKB; // Position of Highlighted Menu Option 

//if pos >= op_length {pos = 0} ; // This code determines where the selection highlight is in the menu, and keeps it from moving off said menu.
//if pos < 0 {pos = op_length - 1}; 

// Move Through Menu Options w/ Controller 

if AxisInput != 0 
{
	if AxisReset == true
	{

		switch(AxisInput)
		{
	
			
	
		// Moving Up
		
			case -1:
				keyboard_key_press(vk_up);
				upKeyKB = true;
				AxisReset = false; 
				show_debug_message("Selector Should be Going Up!");
				keyboard_key_release(vk_up); 
			break;
		
		// Moving Down 
	
			case 1: 
				keyboard_key_press(vk_down);
				downKeyKB = true;
				AxisReset = false;
				show_debug_message("Selector Should be Going Down!");
				keyboard_key_release(vk_down);
			break; 
	
		// No Movement / Default
	
			default: 
				AxisReset = true;
				show_debug_message("Selector Should be Not Moving!");
			break; 
		}
	}
	
	AxisReset = true
	
}

// Move Through Menu Options -- With Controller!

pos += downKeyKB - upKeyKB; // Position of Highlighted Menu Option 

if pos >= op_length {pos = 0} ; // This code determines where the selection highlight is in the menu, and keeps it from moving off said menu.
if pos < 0 {pos = op_length - 1}; 


