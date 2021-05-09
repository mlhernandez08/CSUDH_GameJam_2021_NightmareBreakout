/// player_jump_state();
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_jump_state(){
//get input
get_input();

//calculate movement
calc_movement();

//check state
if on_ground() {
	// apply stretch
	scale_x = scale_max;
	scale_y = scale_min;
	if hsp != 0
		state = states.WALK;
	else
		state = states.IDLE;
// create dust if landing
	if vsp > 0 {
		instance_create_layer(x, y, "Dust", o_player_dust_land);
		audio_play_sound(snd_landing, 20, false);
	}
}
	
if attack {
	state = states.ATTACK;
	image_index = 0;
}

// enable double jumps
if jump {
	jumped();	
}

// enable smaller jumps
if vsp < 0 and !jump_held
	vsp = max(vsp, jump_spd/jump_dampner);

//apply movement
collision();

//check players hp
check_player_hp();

//apply animations
anim();
}