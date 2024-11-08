/// @description Mine minerals

if (instance_exists(o_player)) && (point_in_circle(o_player.x, o_player.y, x, y - 160, 120))
{		
	if(keyboard_check_pressed(ord("E"))) && (hits_before_breake > 0)
	{
		audio_play_sound(sn_dig,10,0);
		global.playerMoney += 10 * global.mining_efficient;
		hits_before_breake --;
		if (hits_before_breake == 0) 
		{
			instance_create_depth(x, y, -999, o_depleted_mineral);
			instance_destroy();
		}
	}
}

if (instance_exists(o_cat)) && (y > o_cat.y -1) instance_destroy(); //This is to destroy the platform when it's below the camera.
