// Apply knockback (helps with hitbox triggers)
var dir = point_direction(x, y, other.x, other.y);
x -= lengthdir_x(knockback_distance, dir);
y -= lengthdir_y(knockback_distance, dir);

// take damage
hp--;

// destroy slime
if (hp <= 0){
	instance_destroy();	
}