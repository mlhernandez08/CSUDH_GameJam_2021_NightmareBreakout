randomize();
newRoom = irandom_range(2, 3)
if newRoom == 2 {
	target_rm = rm_red2;
	target_x = 48;
	target_y = 351;
}
else {
	target_rm = rm_red3;
	target_x = 48;
	target_y = 351;
}	
o_game.roomCount++;