audio_group_set_gain(g_music, global.music_volume/100,0);	
audio_group_set_gain(g_sfx, global.sound_volume/100,0);
room_goto(rm_main_menu);