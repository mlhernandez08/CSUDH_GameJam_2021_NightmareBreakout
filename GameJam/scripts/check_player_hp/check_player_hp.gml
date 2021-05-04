/// check_player_hp
function check_player_hp(){
	if hp <= 0 {
		state = states.DIE
		image_index = 0;
		image_speed = 1;
		scale_x = 1;
		scale_y = 1;
	}

}