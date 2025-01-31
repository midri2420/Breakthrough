if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:
			global.high_score = global.player_score;
			global.player_score = 0;
			global.player_lives = 3;
			room_goto(rm_game);
			break;
		case rm_lose:
			global.player_score = 0;
			global.player_lives = 3;
			room_goto(rm_game);
			break;
	}
}


if (room == rm_game){
	if(instance_number(obj_brick) <= 0){
		room_restart();
	}

	if(gameover){
		if (global.player_score > global.high_score){
			room_goto(rm_win);
		}
		else{
			room_goto(rm_lose);
		}
	}
}