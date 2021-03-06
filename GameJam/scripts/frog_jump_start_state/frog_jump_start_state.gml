/// frog_jump_start_state
function frog_jump_start_state(){
	//check health
	check_enemy_hp();
	
	// get inputs
	
	// calculate movement
	calc_entity_movement()
	
	// modify state
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed {
		state = frog_states.JUMP;
		vsp = jump_spd;
		if on_screen(40) 
			audio_play_sound(snd_frog_jump, 5, false);
		
	}
	
	// apply movement
	collision();
	
	// animations
	frog_anim();
}