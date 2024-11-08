if (y > o_cat.y ) {instance_destroy();};  //This is to destroy the platform when it's below the camera.

if (!instance_exists(o_player)){exit}; //This is so we don't get errors if the player dies.

//Checking for a precise area around the platform, might not be the best method, but it works.

if ((o_player.y > (y - o_player.sprite_height) - 1) && o_player.y < (y - o_player.sprite_height) + 1) {Ycontact = 1}
else {Ycontact = 0};

if ((o_player.x > (x - o_player.sprite_width) + 1) && o_player.x < (x + (sprite_width -1))) {Xcontact = 1}
else {Xcontact = 0};

if (Ycontact == 1 && Xcontact == 1 && o_player.vsp >= 0) {alarm[0] = 2}; //This is where the breaking happens.

///This part here is how the one way platform thing works, you'll see it in the other platforms as well.

if (instance_exists(o_player)){if (y <= o_player.y + o_player.sprite_height - 12) {mask_index = EmptySpr}
else {mask_index = sprite_index}};