
if (point_in_circle(o_player.x, o_player.y, x, y, 60))
{	
	DrawText(c_orange, f_text, fa_left, fa_top);
	
	draw_text(x + 10, y - 75, str);	
}
else 
{
	global.isshop_choose_visible = false;
}