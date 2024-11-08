///Setting variables (Make sure to place this object at the bottom of the room!!!)  READ ME!!!!!!!!!!!!!!
global.platforamount = 0; //Setting the var that'll control the max number of platforms (don't want +50 uk?)
global.spawnypos = room_height - 124; //This variable will control the place to spawn the platform
spawndistance = 0; //This will be the actual y position for the spawning platform later.
spawnxpos = 0; //Pretty obvious
platformtospawnpicker = 0; //This will determine which platform to spawn, the code used is simple and is in the step event.
platformtospawn = o_wall; //This will do the same, but the one above has numbers for it's value, while this one will hold an actual object name.
decreaserate = 0; //This is the decreasing rate, because we don't want all 50 platforms in the same y.
topdistancerange = 100; //Change these if you think the game is too hard
botdistancerange = 96; //Change these if you think the game is too hard
global.downaplatform = 0; //This will indicate that a platform has been destroyed (is below the camera)
global.currentscore = 0; //This is... well... the current score, it's controlled in the losing line object.
Maxnumbertospawn = 200; //Here you can set the max number of platforms allowed to spawn. (Fake ones not included for obvious reasons)
lastspawned = 0; //This will determine what platform was last spawned, you can use it if you want a platform that can't appear twice. (like an explody)