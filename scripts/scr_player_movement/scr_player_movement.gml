function scr_player_movement(sprite_list){
	/* Dependencies */
	// player_direction
	// state
	// move_speed
	
	if (state == "idle"){
		// init sprite
		sprite_index = sprite_list[player_direction];
		
		/* Variables */
		var key_move_x = 0;
		var key_move_y = 0;
	
		/* Get Input */
		key_move_x += keyboard_check(ord("D")) - keyboard_check(ord("A"));
		key_move_y += keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
		/* Player Movement */
		// --- NORMALIZE AND APPLY SPEED ---
		var move_len = point_distance(0, 0, key_move_x, key_move_y);
		if (move_len > 0) {
		    key_move_x /= move_len;
		    key_move_y /= move_len;
		}

		// --- MOVE PLAYER ---
		x += key_move_x * move_speed;
		y += key_move_y * move_speed;
	
		// -- CHANGE SPRITE ---
		// SET SPRITE
		if (key_move_x != 0 || key_move_y != 0) {
			player_direction = point_direction(0, 0, key_move_x, key_move_y) div 90;
			sprite_index = sprite_list[player_direction];
		}
	}
	
}