/// @description 
audio_group_load(g_music);
audio_group_load(g_sfx);
global.music_playing = sn_menu;
music = [sn_music_base, sn_menu];
sfx = [sn_dialogue];
global.music_volume = 10;
global.sound_volume = 60;
control = false;
sfx_loaded = false;
