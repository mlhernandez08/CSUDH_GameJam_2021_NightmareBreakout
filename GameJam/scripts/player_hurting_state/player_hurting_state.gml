/// player_hurting_state();
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_hurting_state(){
//get input
get_input();

//calculate movement
vsp += global.grav;

//drag
hsp = lerp(hsp, 0, drag);

//stop
if abs(hsp) <= 0.1 
	hsp = 0;

//check state
// set to first fram and stop if animation has played once
if on_ground() {
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed {
		image_index = 0;
		image_speed = 0;
	}
}

var recover_time = 0.4;  //1 = innstant recover
if alarm[HURT] < hurt_time * recover_time {
	if on_ground() {
		state = states.IDLE;
	} else {
		state = states.JUMP;	
	}
	image_speed = 1;
}

//apply movement
collision();
//check players hp
check_player_hp();

//apply animations
anim();
}