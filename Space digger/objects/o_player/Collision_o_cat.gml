///Here I'm just creating the falling player object, and setting it to fall at the last speed the player had.
instance_create_depth(x,y,depth,o_player_falling);
o_player_falling.vsp = currentvsp;
instance_destroy(); //And destroying the player too.