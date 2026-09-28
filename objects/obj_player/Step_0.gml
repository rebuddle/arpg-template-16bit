// pause
if (global.pause) {
	image_speed = 0;
	exit;
} else {
	image_speed = 1;
}

// FSM
/* knocback */
scr_player_hit(sprite_knockbacks);

/* idle/move */
scr_player_movement(sprite_moves);

/* dash */
//scr_player_dash(sprite_dashes);

/* attack */
scr_player_attack(sprite_attacks);