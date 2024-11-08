if (y > o_cat.y -1) {instance_destroy();};  //This is to destroy the platform when it's below the camera.

///Moving the platform, and switching it's direction based on the x position.

if (dir = "left") {x -= Horspeed};
if (dir = "right") {x += Horspeed};
if (x <= 200) {dir = "right"};
if (x >= room_width - sprite_width-200) {dir = "left"};

///This part here is how the one way platform thing works, you'll see it in the other platforms as well.

if (instance_exists(o_player)){if (y <= o_player.y + o_player.sprite_height - 11) {mask_index = EmptySpr}
else {mask_index = sprite_index}};