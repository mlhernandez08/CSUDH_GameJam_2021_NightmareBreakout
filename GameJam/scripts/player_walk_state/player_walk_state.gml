/// player_walk_state();
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_walk_state(){
//get input
get_input();

//calculate movement
calc_movement();

//check state
if hsp == 0 
	state = states.IDLE;
	
if attack {
	state = states.ATTACK;
	image_index = 0;
}

//apply movement
collision();

//apply animations
anim();
}