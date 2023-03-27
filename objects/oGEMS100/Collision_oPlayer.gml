/// Destroys self when colliding with Player, adds money. 

oPlayer.gems_balance += 100;
set_ticker_text("Picked up a Red Gem! (+100 GEMS)");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashPink);


//...Then destroys the picked-up sprite.
instance_destroy();


