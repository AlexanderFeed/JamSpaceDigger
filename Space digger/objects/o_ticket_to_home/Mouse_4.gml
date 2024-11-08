/// @description 

if(visible) && (price <= global.playerMoney)
{
	global.playerMoney -= price;
	global.haveTicket = true;
	room_goto(Final);
	instance_destroy();
}
