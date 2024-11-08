var halfw = w * 0.5;
//halfsprite_w = sprite_get_width(Player_Spr) * 0.5;

// draw the box
if (has_dialogue_started) && (is_speaking)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	
	if(current_numder_dialogue % 2 == 0)
	{
		draw_roundrect_ext(x - halfw - border, y - h - border*2 - 30 , x + halfw + border, y - 30, 15,15, false);
	}
	else
	{
		is_dialogue_reverse = (o_player.x + halfsprite_w + length + 2 * border) > room_width;
		if(!is_dialogue_reverse)
		{
			draw_roundrect_ext(o_player.x + halfsprite_w + border - 50, o_player.y - h - border*2 + 50, o_player.x + halfsprite_w + w + 2 * border - 50, o_player.y + 50, 15,15, false);
		}
		else
		{
			draw_roundrect_ext(o_player.x - (halfsprite_w + border - 50), o_player.y - h - border*2 + 50, o_player.x - (halfsprite_w + w + 2 * border - 50), o_player.y + 50, 15,15, false);
		}
	}


	draw_set_alpha(1);
	DrawText(c_white, f_text, fa_center, fa_top);

	if(current_numder_dialogue % 2 == 0)
	{
		draw_text(x, y - h - border - 30, text_current);
	}
	else
	{
		if(!is_dialogue_reverse)
		{
			draw_text(o_player.x + halfsprite_w + halfw + 1.5 * border - 50, o_player.y - h - border + 50, text_current); // I have no idea why I should multiply by 1.5 ... but only this working
		}
		else
		{
			draw_text(o_player.x - (halfsprite_w + halfw + 1.5 * border - 50), o_player.y - h - border + 50, text_current); // I have no idea why I should multiply by 1.5 ... but only this working
		}
	}
	
}