/// player_crouch_block_state
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_crouch_block_state(){
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

//check players hp
check_player_hp();

//apply animations
anim();

}