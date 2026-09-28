function scr_player_hit(sprite_list){
	/* DEPENDENCIES */
	// player_direction
	// state
	// next_state
	// hp
	// knockback_distance_frame
	
	// init knockback state
	if (place_meeting(x, y, obj_slime) && state != "knockback" && state != "dash") {
		// take damage
		hp--;
		
		// trigger animation
		sprite_index = sprite_list[player_direction]
		image_index = 0;
		
		// change states
		state = "knockback";
		next_state = "idle";
	}
	
	if (state == "knockback"){
		
		if instance_exists(obj_slime){
			// move player back
			var dir = point_direction(x, y, obj_slime.x, obj_slime.y);
			x -= lengthdir_x(knockback_distance_frame, dir);
			y -= lengthdir_y(knockback_distance_frame, dir);
		}

	}
	
	// player is dead
	if (hp <= 0){
		instance_destroy();	
	}
	

}