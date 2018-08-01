//Decrease seconds 

global.seconds -= 1/room_speed;

//Switch function to determine who wins when timer ends
if (global.seconds = 0) {
	if (obj_testdamage.damage < obj_testdamage2.damage){
		show_message("Player 2 WINS!!!");
		game_end();
	}
	if (obj_testdamage2.damage < obj_testdamage.damage){
		show_message("Player 1 WINS!!!");
		game_end();
		}
	if (obj_testdamage2.damage == obj_testdamage.damage){
		show_message("Draw!!!");
		game_end();
	}
}