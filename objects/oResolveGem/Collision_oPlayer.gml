/// Destroys self when colliding with Player, adds 100 health to player max health-pool and restores health. 

oPlayer.resolve_max += 100;

oPlayer.player_resolve = oPlayer.resolve_max;
set_ticker_text("Picked up a Resolve Upgrade Gem!");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashPink);


//...Then destroys the picked-up sprite.
instance_destroy();