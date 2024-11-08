///Randomizing variables (decreaserate is set this way to better control the difficuilty)
randomize()
if irandom(4) = 4 {decreaserate = random_range(64,botdistancerange)}
else 
	{
		decreaserate = random_range(botdistancerange,topdistancerange);
	};
spawndistance = global.spawnypos - decreaserate;
spawnxpos = random_range(200,room_width - sprite_width-200); //Determining x for the platforms that will spawn.
platformtospawnpicker = irandom(8); //Randomizing the spawning platform.

///Picking platform to spawn

switch (platformtospawnpicker)
	{
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
				lastspawned = 0;
				platformtospawn = o_wall; break;
		case 5:
		case 6:
				lastspawned = 1;
				platformtospawn = o_wall_breakable; break;
		case 7:
		case 8:
				lastspawned = 2
				platformtospawn = o_wall_sideways; break;

		
	};
	
///Spawning the platform (global.platformamount is for performance). WE'RE FINALY SPAWNING A PLATFORM!! WOOOO!!!
if (global.platforamount < Maxnumbertospawn)	
	{
		global.platforamount += 1;
		instance_create_depth(spawnxpos,spawndistance,-999,platformtospawn);
		global.spawnypos -= decreaserate;
	};


if (global.downaplatform = 1) 
	{
		global.downaplatform = 0;
		global.platforamount -= 1;
	};