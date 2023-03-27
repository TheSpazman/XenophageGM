/// Destroys self when colliding with Player, adds money. 

oPlayer.gems_balance += 25;
set_ticker_text("Picked up a Purple Gem Cluster! (+25 GEMS)");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashPink);


//...Then destroys the picked-up sprite.
instance_destroy();


