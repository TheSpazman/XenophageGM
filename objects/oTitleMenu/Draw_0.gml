// Draw Menu Background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0 , c_aqua, 1);

// Draw Menu Options 
draw_set_font(global.font_main);       //
draw_set_valign(fa_top);               //  Draws, then aligns the text in the options menu here. 
draw_set_halign(fa_left);              // 

for (var i = 0; i < op_length; i++)
	{
		var _c = c_aqua; 
		if pos ==  i {_c  = c_fuchsia};
		draw_text_color(x+op_border, y+op_border + op_space*i , option[i], _c, _c, _c, _c, 1);    // Draws each menu option with space between. i = # of menu option, starting at 0.
	}
	
	
	
	
/// Using the Options

if acceptKeyKB 
	{

	switch(pos)
		{
	
		// Start the Game
		case 0:
			room_goto(TestRoom);
			break;
		
		// Game Options 
		case 1:
	
			break;
		
		// Quit the Game 
	
		case 2: 
			game_end();
			break; 
	
		}
	}





