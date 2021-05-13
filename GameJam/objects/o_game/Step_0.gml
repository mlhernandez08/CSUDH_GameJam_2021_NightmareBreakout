if game_over_lose {
	with(o_player) {
		get_input();
		if jump or attack {
			game_restart();	
		}
	}
}

// reduce delay time at game over
if game_over_won {
	game_over_won_delay--;	
}