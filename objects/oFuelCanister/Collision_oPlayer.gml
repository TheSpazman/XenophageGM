/// Destroys self when colliding with Player, adds 100 health to player max health-pool and restores health. 

oPlayer.jump_fuel_max += 100;

oPlayer.player_jump_fuel = oPlayer.jump_fuel_max;

instance_destroy();



