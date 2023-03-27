/// Destroys self when colliding with Player, adds 100 health to player max health-pool and restores health. 

oPlayer.jump_fuel_max += 100;

oPlayer.player_jump_fuel = oPlayer.jump_fuel_max;
set_ticker_text("Picked up a Wingpack Fuel Upgrade!");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashBlue);


//...Then destroys the picked-up sprite.
instance_destroy();



