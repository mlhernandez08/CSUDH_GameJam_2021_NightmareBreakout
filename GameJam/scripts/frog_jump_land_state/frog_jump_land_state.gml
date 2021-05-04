/// frog_jump_land_state
function frog_jump_land_state(){
	//check health
	check_enemy_hp();
	
	// get inputs
	
	// calculate movement
	calc_entity_movement()
	
	// modify state
		if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed {
		state = frog_states.IDLE;
		image_index = 0;
		image_speed = 0;
	}
	// apply movement
	collision();
	
	// animations
	frog_anim();
}