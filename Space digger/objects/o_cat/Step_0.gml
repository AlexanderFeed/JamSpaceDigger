//ScoreKeeping
if (y > (camera_get_view_y(view_camera[0]) + (795))) {currentcamerapos = (camera_get_view_y(view_camera[0]) + 795)}
y = currentcamerapos;
scorekeeper = floor(-camera_get_view_y(view_camera[0]));
if (global.currentscore < scorekeeper) {global.currentscore = scorekeeper}; //Setting score, and making sure it never drops

//Losing
if (!instance_exists(o_player)){playerisdead = 1};
if (playerisdead = 1) 
	{
		///Please Program your desired losing stuff here. (as in what happens overall, like losing screens) Example:
		if (o_player_falling.y > camera_get_view_y(view_camera[0]) + room_height + 256) 
		{ 
			instance_destroy(o_player);
			instance_destroy(o_player_falling);
			room_goto(Base); 
			};
	};
