global.player_height =0;
depth =100;
prev_bot_y = 0;
prev_top_y = 0;
cur_multi =1;
h_i=1000;
x_pos = 150;
r_wall_x = room_width - 186;
instance_create_depth(x_pos,0, depth, o_back);
instance_create_layer(0,0,"Walls",o_left_wall);
instance_create_layer(r_wall_x,0,"Walls",o_right_wall);

