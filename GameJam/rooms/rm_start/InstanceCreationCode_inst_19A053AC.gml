randomize();
newRoom = irandom_range(1, 3)

if o_game.gameThemeChoice == 0 
	o_game.gameTheme = "rm_red";
else if o_game.gameThemeChoice == 1
	o_game.gameTheme = "rm_blue";
else
	o_game.gameTheme = "rm_green";
if o_game.gameTheme == "rm_red" {
	if newRoom == 1 {
		target_rm = rm_red;
		target_x = 49;
		target_y = 95;
	}
	else if newRoom == 2 {
		target_rm = rm_red2;
		target_x = 48;
		target_y = 351;
	}
	else {
		target_rm = rm_red3;
		target_x = 48;
		target_y = 351;
	}
}

if o_game.gameTheme == "rm_blue" {
	if newRoom == 1 {
		target_rm = rm_blue;
		target_x = 49;
		target_y = 95;
	}
	else if newRoom == 2 {
		target_rm = rm_blue2;
		target_x = 48;
		target_y = 351;
	}
	else {
		target_rm = rm_blue3;
		target_x = 48;
		target_y = 351;
		}
}
if o_game.gameTheme == "rm_green" {
	if newRoom == 1 {
		target_rm = rm_green;
		target_x = 49;
		target_y = 95;
	}
	else if newRoom == 2 {
		target_rm = rm_green2;
		target_x = 48;
		target_y = 351;
	}
	else {
		target_rm = rm_green3;
		target_x = 48;
		target_y = 351;
		}
}
//show_debug_message(newRoom);
//show_debug_message(o_game.gameThemeChoice);