/// frog_jump_start_state
function frog_jump_start_state(){
	// get inputs
	
	// calculate movement
	
	// modify state
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed {
		state = frog_states.JUMP;
		vsp = jump_spd;
		
	}
	
	// apply movement
	collision();
	
	// animations
	frog_anim();
}