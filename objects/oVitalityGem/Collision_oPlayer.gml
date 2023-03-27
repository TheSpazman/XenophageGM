/// Destroys self when colliding with Player, adds 100 health to player max health-pool and restores health. 

oPlayer.health_max += 100;

oPlayer.player_health = oPlayer.health_max;
set_ticker_text("Picked up a Vitality Upgrade Gem!");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashBlue);


//...Then destroys the picked-up sprite.
instance_destroy();