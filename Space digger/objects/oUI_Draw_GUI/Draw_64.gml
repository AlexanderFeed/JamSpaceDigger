/// @description 

// Draw coions

var _xx,_yy;

//Coin Icon
_xx = 20;
_yy = 20;
draw_sprite(s_crystal,0, _xx, _yy);

// Coin Text
DrawText(c_green, f_text, fa_left, fa_top);
_xx += sprite_get_width(s_crystal) * 0.5 + 4;
_yy = 15;

_str = global.playerMoney;
// Coin Border
draw_text(_xx + 1,_yy, _str);
draw_text(_xx - 1,_yy, global.playerMoney);
draw_text(_xx,_yy + 1, global.playerMoney);
draw_text(_xx,_yy - 1, global.playerMoney);
draw_set_color(c_white);
draw_text(_xx,_yy, global.playerMoney);
