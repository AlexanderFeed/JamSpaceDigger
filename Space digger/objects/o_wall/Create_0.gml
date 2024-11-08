
///Creating fake platforms and basing it off the real's location so it's not too close.

chanceforfake = 2; //Please edit this to change the chance of fake platforms getting created next to real ones.
if (sprite_index = Normal_Wall_Spr && irandom(chanceforfake) = 0) 
	{
		if (x >= room_width/2) {instance_create_depth(random_range(200,(room_width/2) - 64),(y + (random_range(-16, +16))),-998,o_wall_fake)}
		if (x < room_width/2) {instance_create_depth(random_range((room_width/2) + 64, room_width - 200),(y + (random_range(-16, +16))),-998,o_wall_fake)}	
	};

if(irandom(4) == 4)
{
	//instance_create_layer(x, y, "Instances", o_mineral);
	var miner = instance_create_depth(x + sprite_get_width(Normal_Wall_Spr)*0.5, y, -999, o_mineral);
	if(irandom(1)==0)
	{
		miner.image_index=1;
	}
}
