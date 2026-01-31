// Basic behavior – player dies
if (global.masks > 0) {
	instance_destroy();
	global.masks --;
}
else if (global.virus_load < 4) {
	instance_destroy();
	global.virus_load ++
	
}
else {
	instance_destroy(other);
}