
// game end
if o_game.roomCount >= 3 {
	o_game.game_over_won = true;
	fade_to_room(rm_game_end, 0, 0, 1, c_black);
	state = states.GAME_END;
	instance_destroy(other);
}