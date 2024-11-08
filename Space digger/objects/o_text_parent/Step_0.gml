/// @description


if (has_dialogue_started) && (point_in_circle(o_player.x, o_player.y, x, y, 100))
{
	letters += spd;
	text_current = string_copy(text, 1, floor(letters));

	draw_set_font(f_text);

	if (h == 0) h = string_height(text);
	w = string_width(text_current);
	is_speaking = true;
}
else
{
	letters = 0;
	text_current = "";
	is_speaking = false;
	w = 0;
	h = 0;
}


//сбросить когда закончено

if (string_length(text_current) >= string_length(text)) && (keyboard_check_pressed(vk_anykey))
{
	if (current_numder_dialogue < amount_of_dialogue - 1)
	{
		letters = 0;
		text_current = "";
		current_numder_dialogue++;
		text = array_get(texts, current_numder_dialogue);	
		length = string_length(text);
		if (text == "") 
		{
			current_numder_dialogue++;
			text = array_get(texts, current_numder_dialogue);	
			length = string_length(text);
		}
		length = string_length(text);
		w = 0;
		h = 0;
	}
	else
	{
		text_current = "";
		letters = 0;
		current_numder_dialogue = 0;
		text = array_get(texts, current_numder_dialogue);
		length = string_length(text);
		w = 0;
		h = 0;
		has_dialogue_started = false;		
	}
}
