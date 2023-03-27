/// Destroys self when colliding with Player, adds money. 

oPlayer.gems_balance += 5;
set_ticker_text("Picked up an Aqua Gem Fragment! (+5 GEMS)");


//This code spawns the item-pickup flash. 

  instance_create_depth(x, y, depth, oItemFlashGreen);


//...Then destroys the picked-up sprite.
instance_destroy();


