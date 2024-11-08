/// @description

if(visible) && (price <= global.playerMoney)
{
	global.playerMoney -= price;
	global.jump_boost = 1.5;
	instance_destroy();
}