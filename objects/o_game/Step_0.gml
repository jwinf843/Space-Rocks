/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case r_start:
			room_goto(r_game)
			break
			
		case r_win:
		case r_gameover:
			game_restart()
			break
	}
}
if(room == r_game){
	if(score >= 1000){
		room_goto(r_win)
	}

	if(lives <= 0){
		room_goto(r_gameover)
	}
}