/// block_check();
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function block_check(){
	if block {
	if down {
		state = states.CROUCH_BLOCK;
	} else {
		state = states.BLOCK;
	}
	hsp = 0;
	
} else {
	// leaving block state
	if down {
		state = states.CROUCH;
		hsp = 0;
	} else {
		if hsp != 0 {
			if !on_ground()
				state = states.JUMP;
			else
				state = states.WALK;
		} else {
			state = states.IDLE;
		}
	}
}

}