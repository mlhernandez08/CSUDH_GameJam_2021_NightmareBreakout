/// anim();
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function frog_anim(){
sprite_index = sprites_array[state];
//mask_index = mask_array[state];
image_xscale = facing;

switch(state) {
	case states.JUMP:
		if vsp < 0 
			image_index = 0;
		else
			image_index = 1;
	break;
}

}