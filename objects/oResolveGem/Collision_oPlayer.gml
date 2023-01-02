/// Destroys self when colliding with Player, adds 100 health to player max health-pool and restores health. 

oPlayer.resolve_max += 100;

oPlayer.player_resolve = oPlayer.resolve_max;

instance_destroy();