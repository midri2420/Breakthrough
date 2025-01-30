switch(room){
	case rm_game:
		draw_text(8, 8, "Score: " + string(global.player_score));

		draw_set_halign(fa_right);
		draw_text(room_width-8, 8, "High Score: " + string(global.high_score));

		draw_set_halign(fa_left);

		var _x = (room_width/2) - ((global.player_lives-1) * 32);
		repeat(global.player_lives){
			draw_sprite_ext(
				spr_bat, 
				0, 
				_x, 
				room_height-16,
				0.75,
				0.75,
				0,
				c_white,
				0.5
			);
			_x += 64;
			}
		break;
			
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "BREAKTHROUGH",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200, 
			"GET HIGHEST SCORE\n\n \n ARROW KEYS: Left/Right\n SPACE: Shoot Ball\n\n>> PRESS ENTER TO START <<");
		draw_set_halign(fa_left);
		break;

	case rm_lose:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 250, 
			"High Score: " + string(score)
		);
		draw_text(
			room_width/2, 300, 
			"Press enter to play again"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 100, "NICE JOB!",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 250, 
			"New High Score: " + string(score)
		);
		draw_text(
			room_width/2, 300, 
			"Press enter to play again"
		);
		break;
}

