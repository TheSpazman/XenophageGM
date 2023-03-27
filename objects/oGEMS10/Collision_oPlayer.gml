/// Destroys self when colliding with Player, adds money. 

oPlayer.gems_balance += 10;
set_ticker_text("Picked up a Blue Gem Cluster! (+10 GEMS)");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashBlue);


//...Then destroys the picked-up sprite.
instance_destroy();


