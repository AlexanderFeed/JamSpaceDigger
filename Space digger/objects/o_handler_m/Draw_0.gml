draw_sprite(sprite_index,image_index,x,y);

var knob_amount = amount_current / amount_max;
var knob_position_x = x + (sprite_width* knob_amount);

if(setting == "sound")
{
if(knob_amount !=0)
{
draw_sprite(s_knob_sound,0,knob_position_x-30,y-30);
}
else
{
	draw_sprite(s_knob_sound,1,knob_position_x-30,y-30);
}
}
else
{
if(knob_amount !=0)
{
draw_sprite(s_knob_music,0,knob_position_x-30,y-30);
}
else
{
	draw_sprite(s_knob_music,1,knob_position_x-30,y-30);
}
}