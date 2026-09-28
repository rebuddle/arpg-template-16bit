function scr_player_attack(sprite_list){
	// DEPENDENCIES
	// player_direction
	// sprite_hitboxes
	// state
	// next_state
	
	// trigger attack state
	if (mouse_check_button(mb_left) and next_state = undefined) {
		state = "attack";	
		// set sprite
		sprite_index = sprite_list[player_direction];
		image_index = 0;
		
	}
	
	// CREATE HITBOX
	if (state == "attack") {
		// create  hitbox
		var hitbox = instance_create_depth(x, y, depth+1, obj_hitbox);
		hitbox.sprite_index = sprite_hitboxes[player_direction];
		// exit attack state
		state = undefined;
		next_state = "idle";
	}
	
	
}