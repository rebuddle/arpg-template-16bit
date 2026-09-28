// pause
if (global.pause) {
	image_speed = 0;
	exit;
} else {
	image_speed = 1;
}

// Check if player exists
if (instance_exists(target)) {
    // Get direction to player
    var dir = point_direction(x, y, target.x, target.y);

    // Move toward player
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
}