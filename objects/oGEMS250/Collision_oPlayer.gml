/// Destroys self when colliding with Player, adds money. 

oPlayer.gems_balance += 250;
set_ticker_text("Picked up an Opalescent Galaxy-Gem! (+250 GEMS)");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashBlue);


//...Then destroys the picked-up sprite.
instance_destroy();


