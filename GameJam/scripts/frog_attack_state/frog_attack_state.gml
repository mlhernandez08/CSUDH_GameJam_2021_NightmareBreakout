/// frog_attack_state
function frog_attack_state(){
	// get inputs
	
	// calculate movement
	
	// modify state
	// attack warning
	if image_index = 2 and !inhale {
		inhale = true;
		alarm[INHALE] = inhale_timer;
		image_speed = 0;
	}
	
	if attack {
		// set attack depth
		depth = layer_get_depth(layer_get_id("Player")) - 1;
		if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed {
			state = frog_states.IDLE;
			alarm[CAN_ATTACK] = attack_delay;
			depth = layer_get_depth(layer_get_id("Enemy"));
			inhale = false;
			attack = false;
		}
	}
	
	// apply movement
	collision();
	
	// animations
	frog_anim();
}