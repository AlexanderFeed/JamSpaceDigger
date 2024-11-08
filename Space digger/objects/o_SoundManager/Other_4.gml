if(room_get_name(room)!="rm_settings" && room_get_name(room)!="rm_main_menu")
{
	audio_stop_all();
}

switch(room_get_name(room))
{
	case "Base":
		audio_play_sound(sn_music_base,10,1);
	break;
	case "Main_Game_Room":
	audio_play_sound(sn_game_go,10,1);
	break;
	case "Crater_lvl1":
	audio_play_sound(sn_first_lvl,10,1);
	break;
	case "Crater_lvl2":
	audio_play_sound(sn_first_lvl,10,1);
	break;
	case "Crater_lvl3":
	audio_play_sound(sn_first_lvl,10,1);
	break;
}