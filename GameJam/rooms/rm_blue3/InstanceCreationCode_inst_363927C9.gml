randomize();
newRoom = irandom_range(1, 2)
if newRoom == 1 {
	target_rm = rm_blue;
	target_x = 49;
	target_y = 95;
}
else {
	target_rm = rm_blue2;
	target_x = 48;
	target_y = 351;
}
o_game.roomCount++;