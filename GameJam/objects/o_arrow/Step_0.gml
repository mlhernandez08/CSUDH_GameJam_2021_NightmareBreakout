// movement
hsp = spd * facing;
image_xscale = sign(hsp);
var t1 = 0, t2 = 0;

// stop if dead
if die
	hsp = 0;

// destroy at wall if moved more than 1 tile
if abs(xstart - x) > global.tile_size {
	if sign(hsp) 
		var side = bbox_right;
	else
		var side = bbox_left;
	var t1 = tilemap_get_at_pixel(global.map, side + sign(hsp), bbox_top);
	var t2 = tilemap_get_at_pixel(global.map, side + sign(hsp), bbox_bottom);
	if (t1 == SOLID  or t1 == -1) or (t2 == SOLID  or t2 == -1){
		die = true;	
	}
	collision();
} else {
	x += hsp;	
}

// play animation
if die {
	// jump to image index 1 when run die
	if image_speed != 1 
		image_index = 1;
	image_speed = 1;	
	// play arrow die sound if arrow on screen
	if on_screen(40) {
		if image_index == 1
			audio_play_sound(snd_arrow_die, 20, false);	
	}
}

// destroy if left room
if t1 == -1 or t2 == -1
	instance_destroy();