randomize();
newRoom = irandom_range(1, 2)
if o_game.roomCount >= 2 {
	target_rm = rm_boss;
	target_x = 50;
	target_y = 447;
} else {
	if newRoom == 1 {
		target_rm = rm_green2;
		target_x = 48;
		target_y = 351;
	}
	else {
		target_rm = rm_green3;
		target_x = 48;
		target_y = 351;
	}
	o_game.roomCount++;
}