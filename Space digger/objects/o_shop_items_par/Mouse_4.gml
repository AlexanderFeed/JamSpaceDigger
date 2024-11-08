if(visible) && (price <= global.playerMoney)
{
	global.playerMoney -= price;
	instance_destroy();
}