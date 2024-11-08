/// @description 

if(visible) && (price <= global.playerMoney)
{
	global.playerMoney -= price;
	global.mining_efficient = 1.5;
	instance_destroy();
}
