
if (point_in_circle(o_player.x, o_player.y, x, y, 60))
{	
	DrawText(c_green, f_text, fa_left, fa_top);
	
	draw_text(x - 25, y - 60, str);	
}
else 
{
	global.istutor_visible = false;
}