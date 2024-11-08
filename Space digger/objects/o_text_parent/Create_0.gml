spd = 2;
letters = 0;
amount_of_dialogue = array_length(texts);
current_numder_dialogue = 0;
text = array_get(texts, current_numder_dialogue);
length = string_length(text);
text_current = "";
w = 0;
h = 0;
border = 10; 

has_dialogue_started = false;
is_speaking = false;

halfsprite_w = sprite_get_width(Player_Spr_idle) * 0.5;
