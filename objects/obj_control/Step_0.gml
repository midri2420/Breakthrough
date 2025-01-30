if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_lose:
			game_restart();
			break;
	}
}


if (room == rm_game){
	if(instance_number(obj_brick) <= 0){
		room_restart();
	}

	if(gameover){
		room_restart();
		if (global.player_score > global.high_score){
			room_goto(rm_win);
		}
		else{
			room_goto(rm_lose);
		}
	}
}