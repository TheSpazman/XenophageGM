/// PSY-KR Suit Shot 1 Code

x = oPlayer.x; 
y = oPlayer.y+1; 



if (oPlayer.controller == 0)
{
		image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else
{
		var controllerH = gamepad_axis_value(0,gp_axisrh);
		var controllerV = gamepad_axis_value(0,gp_axisrv);
		if (abs(controllerH) > 0.2) || (abs(controllerV) >0.2)
			{
					controllerangle = point_direction(0,0, controllerH,controllerV)
			}
			image_angle =controllerangle;
		
}

firingdelay = firingdelay - 1; 
if ((mouse_check_button(mb_left)) || gamepad_button_check(0,gp_shoulderrb)) && (firingdelay < 0 )
{
	firingdelay = 5;
	with (instance_create_layer(x,y,"WeaponShot",oShot1))
	{
		
		speed = 24;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
}


