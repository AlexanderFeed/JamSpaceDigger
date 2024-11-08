/// @description
draw_self();

if (instance_exists(o_player)) && (point_in_circle(o_player.x, o_player.y, x, y, 80))
{	
	DrawText(c_white, f_text, fa_left, fa_top);
	
	draw_text(x - 40, y - 80, str);	
}