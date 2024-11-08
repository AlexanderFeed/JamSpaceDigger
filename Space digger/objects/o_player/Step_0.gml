//checking for vsp sign
currentvsp = vsp * (-(sign(vsp)));

///Get the player's input

key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))


//React to input

move = key_right - key_left;

hsp = move * movespeed;

if (vsp < 10) vsp += (grav);


if (place_meeting(x,y+1,o_ground))
{
  currentjumpremain = global.amountofjump;
}

if (currentjumpremain >= 1) && (key_jump)
{
	vsp = key_jump * -jumpspeed * global.jump_boost;
	currentjumpremain --;
}

//Horizontal collisin

if (place_meeting(x+hsp,y,o_ground))
{
  while (!place_meeting(x+sign(hsp),y,o_ground))
    {
       x += sign(hsp);
    }
    hsp = 0;
}
//Vertical collisin
if (place_meeting(x,y+vsp+0.1,o_ground))
{
  while (!place_meeting(x,y+sign(vsp),o_ground))
    {
	   audio_play_sound(sn_fall,10,0);
	   y += sign(vsp);
    }
    vsp = 0;
};


x += hsp;

y += vsp;

// Animation
if (!place_meeting(x,y+1,o_ground))
{	
	if (vsp < 0)
	{
		sprite_index = s_player_jump_up;
	}
	else
	{
		sprite_index = s_player_jump_down;
	}
	
	if(hsp != 0)image_xscale = -sign(hsp);
}
else
{
	image_speed = 1;
	if (hsp != 0)
	{
		sprite_index = s_player_run;
		image_xscale = -sign(hsp);
	}
	else
	{
		sprite_index = Player_Spr_idle;
	}
}

