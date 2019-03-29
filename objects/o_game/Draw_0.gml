/// @description Insert description here
// You can write your code in this editor

switch(room){
	case r_game:
		draw_text(20, 20, "SCORE: " + string(score))
		draw_text(20, 40, "LIVES: " + string(lives))
		break
		
	case r_start:
		draw_set_halign(fa_center)
		var color = c_yellow
		draw_text_transformed_color(
			room_width/2, 100, "Space Rocks",
			3, 3, 0, color, color, color, color, 1
		)
		draw_text(
			room_width/2, 200,
			"Score 1,000 points to win!\nUP: Move Forward\nLEFT/RIGHT: Rotate\nSPACE: Fire Canons\n\n>> PRESS ENTER TO START <<"
		)
		draw_set_halign(fa_left)
		break
	
	case r_win:
		draw_set_halign(fa_center)
		var color = c_lime
		draw_text_transformed_color(
			room_width/2, 100, "YOU WON!",
			3, 3, 0, color, color, color, color, 1
		)
		draw_text(
			room_width/2, 200,
			">> PRESS ENTER TO RESTART <<"
		)
		draw_set_halign(fa_left)
		break
		
	case r_gameover:
		draw_set_halign(fa_center)
		var color = c_red
		draw_text_transformed_color(
			room_width/2, 100, "GAME OVER",
			3, 3, 0, color, color, color, color, 1
		)
		draw_text(
			room_width/2, 200,
			"FINAL SCORE: " + string(score) + "\nPRESS ENTER TO RESTART"
		)
		draw_set_halign(fa_left)
		break
}
