function scr_player_dash(sprite_list){
	//DEPENDENCIES
	// player_direction
	// state
	// next_state
	// move_speed
	// dash_distance
	// dash_travel
	
	// enter dash state
	if (keyboard_check(vk_space) && dash_cooldown_counter <= 0) {
		state = "dash";	
		dash_cooldown_counter = dash_cooldown;
		// index sprite
		sprite_index = sprite_list[player_direction];
		image_index = 0;
		next_state = "idle";
	}
	
	// dashing
	if (state == "dash") {
		// move sprite
		x += lengthdir_x(move_speed*2, player_direction*90);
		y += lengthdir_y(move_speed*2, player_direction*90);
	}
	
	// handle dash cooldown
	if dash_cooldown > 0 {
		dash_cooldown_counter--;
	}

}