if (y > o_cat.y ) {instance_destroy();}; //This is to destroy the platform when it's below the camera.

///This part here is how the one way platform thing works, you'll see it in the other platforms as well.
if (instance_exists(o_player)){if (y <= o_player.y + o_player.sprite_height-11) {mask_index = EmptySpr}
else {mask_index = sprite_index}};
