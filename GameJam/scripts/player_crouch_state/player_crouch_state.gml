/// player_crouch_state();
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_crouch_state(){
//get input
get_input();

//calculate movement
calc_movement();

//check state

// blocking
block_check();

if attack {
	state = states.ATTACK;
	image_index = 0;
}

if jump {
	jumped();
}

//apply movement
collision();

//apply animations
anim();

}