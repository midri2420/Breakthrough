if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}


if (room == rm_game){
	if(instance_number(obj_brick) <= 0){
		room_restart();
	}

	if(gameover){
		if(keyboard_check_pressed(vk_anykey)){
			room_restart();
			global.high_score = global.player_score;
			global.player_score = 0;
			global.player_lives = 3;
		}
	}
}