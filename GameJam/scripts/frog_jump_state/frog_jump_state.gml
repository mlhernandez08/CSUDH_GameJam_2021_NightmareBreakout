/// frog_jump_state
function frog_jump_state(){
	//check health
	check_enemy_hp();
	
	// get inputs
	
	// calculate movement
	calc_entity_movement()
	// horizontal movement
	hsp += spd * facing;
	
	// limit speed
	hsp = min(abs(hsp), max_hsp) * facing;
	
	// modify state 
	// check if on ground
	if on_ground() {
		state = frog_states.JUMP_LAND;	
		hsp = 0;
		image_index = 0;
		image_speed = 1;
	}
	
	// apply movement
	collision();
	
	// animations
	frog_anim();
}