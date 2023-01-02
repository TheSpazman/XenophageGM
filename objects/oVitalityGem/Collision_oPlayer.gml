/// Destroys self when colliding with Player, adds 100 health to player max health-pool and restores health. 

oPlayer.health_max += 100;

oPlayer.player_health = oPlayer.health_max;

instance_destroy();