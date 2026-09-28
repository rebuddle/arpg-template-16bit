function scr_player_draw_health(){
	// DEPENDENCIES
	// max_hp
	// hp
	// obj_player
	// spr_hp
	
	// variables
	var heart_init_x = 8; //20; //40;
	var heart_init_y  = 8; // 24;
	var heart_width = 16;
	var heart_height = 16;
	
	// draw background
	/*
	draw_set_alpha(0.5);
	draw_set_color(c_white);
	draw_rectangle(heart_init_x - 6, heart_init_y + 12, heart_init_x + (obj_player.max_hp/2)*heart_width + 4 ,heart_init_y + heart_height + 6, false);
	draw_set_alpha(1);
	*/

	// drawing the current number of lives
	for (var i = 0; i < obj_player.max_hp; i+=2) {
	    var heart_x = heart_init_x + heart_width * i/2;
	    var heart_y = heart_init_y;
		var img_index = 0;
		if (i == obj_player.hp - 1){
			img_index = 1;
		} else if (i > obj_player.hp - 2) {
			img_index = 2;
		}
	    draw_sprite_stretched(spr_hp, img_index, heart_x, heart_y, heart_width, heart_height);
	}

}