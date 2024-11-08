if(camera_get_view_y( view_camera[0]) < o_back.y+200 && o_back.y-100 < camera_get_view_y( view_camera[0]))
{
	if(not(camera_get_view_y( view_camera[0]) < prev_bot_y && prev_top_y < camera_get_view_y( view_camera[0])))
	{
	var inst = instance_create_depth(x_pos,-h_i*cur_multi,depth,o_back);
	var l_w = instance_create_layer(0,-h_i*cur_multi,"Walls",o_left_wall);
	var r_w = instance_create_layer(r_wall_x,-h_i*cur_multi,"Walls",o_right_wall);
	if(cur_multi ==3)
	{
		inst.image_index =1;
	}
	if(cur_multi >3 && cur_multi<5)
	{
		inst.image_index =2;
	}
	if(cur_multi==5)
	{
		inst.image_index =3;
	}
	if(cur_multi>5)
	{
		inst.image_index =4;
	}
	cur_multi+=1;
	}
	
	prev_bot_y = o_back.y+200;
	prev_top_y = o_back.y-100;
}


