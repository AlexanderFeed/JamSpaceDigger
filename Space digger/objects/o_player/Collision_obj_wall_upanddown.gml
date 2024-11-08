if (y > (other.y + other.sprite_height) - 1){exit}
instance_create_depth(x,y,depth,obj_player_falling);
obj_player_falling.vsp = vsp;
instance_destroy();