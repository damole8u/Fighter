//Decrease seconds 

global.seconds -= 1/room_speed;

//Switch function to determine who wins when timer ends
if (global.seconds = 0) {
	if (obj_player.hp < obj_player2.hp){
		show_message("Player 2 WINS!!!");
		game_end();
	}
	else{
		if (obj_player2.hp < obj_player.hp){
		show_message("Player 1 WINS!!!");
		game_end();
		}
		else{
			show_message("Draw!!!");
			game_end();
	}
}}