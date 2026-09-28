// stats
max_hp = 6;
hp = max_hp;

// knockback
//knockback_distance = 24;
knockback_distance_frame = 2;
//knockback_distance_travel = knockback_distance;

// dash
//dash_distance = 64;
//dash_travel = dash_distance;
dash_cooldown = 60;
dash_cooldown_counter = 0;

// states
state = "idle";
next_state = undefined;

// movement variables
move_speed = 2;
player_direction = 0;

// sprite List
sprite_moves = [spr_player_move_right
				, spr_player_move_up
				, spr_player_move_left
				, spr_player_move_down];
sprite_attacks = [spr_player_attack_right
				, spr_player_attack_up
				, spr_player_attack_left
				, spr_player_attack_down];
sprite_hitboxes = [spr_attack_right_hitbox
				, spr_attack_up_hitbox
				, spr_attack_left_hitbox
				, spr_attack_down_hitbox];
sprite_knockbacks =  [spr_player_knockback_right
				, spr_player_knockback_up
				, spr_player_knockback_left
				, spr_player_knockback_down];
sprite_dashes = [spr_player_dash_right
				, spr_player_dash_up
				, spr_player_dash_left
				, spr_player_dash_down];