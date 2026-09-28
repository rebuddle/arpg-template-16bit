// pause
if (global.pause) {
	image_speed = 0;
	exit;
} else {
	image_speed = 1;
}

frame_count++;

if instance_exists(obj_player){	
// spawn slimes
	if (frame_count % 250 == 0) {
		instance_create_depth(irandom_range(46, 462), irandom_range(46, 302), obj_player.depth, obj_slime);
		enemies_spawned++;
	}
	
	if (enemies_spawned >= 10 and !instance_exists(obj_slime)) {
		room_goto_next();	
	}
}

// this can get very complicated, but we can create levels here. Nonstop slime drops.
// you are stuck in the tv and you can't get out. how do you get out?! Maybe once you
// get out it turns into a different game. Then you can run around the house and try
// to hop into another tv... strange but i like it.