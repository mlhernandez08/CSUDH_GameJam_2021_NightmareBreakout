/// player_die_state();
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_die_state(){
//get input

//calculate movement
vsp += global.grav;

//drag
hsp = lerp(hsp, 0, drag);

//stop
if abs(hsp) <= 0.5 
	hsp = 0;

//check state
if (image_index >= image_number - 1) {
	image_speed = 0;
	get_input();
	if jump or attack {
		room_restart();
		// reset player
		x = room_start_pos_x;
		y = room_start_pos_y;
		facing = room_start_facing;
		state = states.IDLE;
		// reset speed after death pause
		image_speed = 1;
		// reset hp
		hp = max_hp;
		// allow instant camera panning
		with(o_camera) {
			// enable instant panning	
			camera_pan_speed = 1;
			// reset camera pan speed 
			alarm[CAMERA_RESET] = 3;
		}
	}
}

//apply movement
collision();

//apply animations
anim();
}