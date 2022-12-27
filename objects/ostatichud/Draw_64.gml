/// Base GUI Code

if(instance_exists(oPlayer))
{
	draw_sprite_stretched(sStaticHUD, -1,0,0,1280,800);
	draw_sprite_stretched(sHUDVitality, -1,144,712,32,26) image_speed = 0.5;
	draw_sprite_stretched(sHUDResolve, -1,144,756,32,26) image_speed = 0.5;
}


