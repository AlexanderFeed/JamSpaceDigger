if(audio_group_is_loaded(audiogroup_default))
{
	audio_group_set_gain(g_music, global.music_volume/100,0);	
	audio_group_set_gain(g_sfx, global.sound_volume/100,0);
	audio_play_sound(global.music_playing,100,true);

	control = true;
}

if(audio_group_is_loaded(audiogroup_default))
{
	sfx_loaded=true;
}