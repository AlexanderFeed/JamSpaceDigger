switch (global.game_stage)
{
	case 1:
		texts = stage1;
		break;
	case 2:
		texts = stage2;
		break;
	case 3:
		texts = stage3;
		break;
	case 4:
		texts = stage4;
		break;
	case 5:
		texts = stage5;
		break;
	case 6:
		texts = stage6;
		break;
	case 7:
		texts = stage7;
		break;
	case 8:
		texts = stage8;
		break;	
}

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
