/// PSY-KR Suit Shot 1 Code

x = oPlayer.x; 
y = oPlayer.y+1; 

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1; 
if (mouse_check_button(mb_left)) && (firingdelay < 0 )
{
	firingdelay = 5;
	with (instance_create_layer(x,y,"WeaponShot",oShot1))
	{
		
		speed = 24;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
}


