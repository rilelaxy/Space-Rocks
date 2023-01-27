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

if(room == rm_game){
	if(score >= 10){
		room_goto(rm_win);
	}

	if(lives <= 0){
		room_goto(rm_gameover);
	}
}


if(room == rm_game){
	if(global.honey = 0){
		room_goto(rm_reload)
	}
}

if(room == rm_reload){
	if(global.honey = 100){
		room_goto(rm_game)
		global.honey = 50
	}
}
