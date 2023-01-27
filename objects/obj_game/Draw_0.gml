switch(room){
	case rm_game:
		draw_text(20, 20, "HIVES SAVED: "+string(score));
		draw_text(20, 40, "LIVES: "+string(lives));
		draw_text(20, 60, "HONEY LEFT: "+string(global.honey));
		break;

	case rm_start:
		draw_set_halign(fa_center)
		var c = c_orange;
		draw_text_transformed_color(
			room_width/2, 100,  "SPACE BEES",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 150,
			@"Help 1,000 hives to win!
Up: Move
Left/Right: Change direction
Space: Shoot HONEY




Press ENTER to START"
		);
		draw_set_halign(fa_left)
		break;
	
	case rm_win:
			draw_set_halign(fa_center)
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 200,  "YOU SAVED THE HIVES!",
			1.5, 1.5, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 300,
			"Press ENTER to RESTART"
		);
		draw_set_halign(fa_left)
		break;
	
	case rm_gameover:
			draw_set_halign(fa_center)
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 200,  "GAME OVER BEES WENT EXTINCT :(",
			1, 1, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 150,
			"HIVES SAVED: "+string(score)
		);
		draw_text(
			room_width/2, 300,
			@"Press ENTER to CONTINUE 
WHERE YOU LEFT OFF"
		);
		draw_set_halign(fa_left)
		break;
}

draw_set_font(fnt_text);