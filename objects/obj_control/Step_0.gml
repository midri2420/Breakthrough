if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			var temp = irandom(2);
			if (temp == 0){
				room_goto(rm_game)
			}
			else if(temp == 1){
				room_goto(rm_game_2)
			}
			else{
				room_goto(rm_game_3);
			}
			break;
			
		case rm_win:
			global.high_score = global.player_score;
			global.player_score = 0;
			global.player_lives = 3;
			temp = irandom(2);
			if (temp == 0){
				room_goto(rm_game)
			}
			else if(temp == 1){
				room_goto(rm_game_2)
			}
			else{
				room_goto(rm_game_3);
			}
			break;
			
		case rm_lose:
			global.player_score = 0;
			global.player_lives = 3;
			temp = irandom(2);
			if (temp == 0){
				room_goto(rm_game)
			}
			else if(temp == 1){
				room_goto(rm_game_2)
			}
			else{
				room_goto(rm_game_3);
			}
			break;
	}
}


if (room == rm_game || room = rm_game_2 || room == rm_game_3){
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