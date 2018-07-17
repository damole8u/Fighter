//Switch function to determine who wins

switch (game_over) {
	case time = 0: 
	case obj.player_1.hp < obj.player_2.hp:
		show_message("Player 2 WINS!!!");
	case time = 0: 
	case obj.player_2.hp < obj.player_1.hp:
		show_message("Player 1 WINS!!!");
	case obj.player_1.hp <= 0:
		show_message("Player 2 WINS!!!");
	case obj.player_2.hp <= 0:
		show_message("Player 1 WINS!!!");
	default:
		show_message("DRAW!!!")
}