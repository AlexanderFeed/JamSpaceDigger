if (y > o_cat.y -1) {instance_destroy();}; //This is to destroy the platform when it's below the camera.

///This part here is how the one way platform thing works, you'll see it in the other platforms as well.

if (instance_exists(o_player)){if (y > (o_player.y + o_player.sprite_height) - 1) {mask_index = EmptySpr}
else {mask_index = sprite_index}};

///Here we're setting the fake to start a slow fall.
if (fall = 0) {exit};
if (fall = 1) 
	{
		if (vsp < -3) {vsp = -3}; //Limiting the speed.
		vsp += 0.1;
		y += vsp;
	};