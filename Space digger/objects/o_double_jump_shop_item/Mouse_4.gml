/// @description

if(visible) && (price <= global.playerMoney)
{
	global.playerMoney -= price;
	if(instance_exists(o_player))
	{
		with(o_player)
		{
			global.amountofjump = 2;
		}
	}
	instance_destroy();
}