randomize();
newRoom = irandom_range(1, 2)
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