#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);
if (instance_exists(o_player))
	{
		var _y = clamp(o_player.y - view_height/2,-9999999999999,room_height-view_height);
		var _cur_y = camera_get_view_y(view);
		var _spd = 0.5; //increase this to raise the camera speed
		camera_set_view_pos(view,0,lerp(_cur_y,_y,_spd));
	};