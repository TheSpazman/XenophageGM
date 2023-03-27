/// Destroys self when colliding with Player, adds money. 

oPlayer.gems_balance += 1;
set_ticker_text("Picked up a Green Gem Shard! (+1 GEMS)");

//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashPink);


//...Then destroys the picked-up sprite.
instance_destroy();





