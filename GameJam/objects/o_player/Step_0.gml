/// @description Insert description here
//get input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

//calculate movement
hsp += (right - left) * walk_spd;

//drag
hsp = lerp(hsp, 0, drag);

//stop
if abs(hsp) <= 0.1 
	hsp = 0;
	
//face correct way
if hsp != 0
	facing = sign(hsp);
	
// limit speed
hsp = min(abs(hsp), max_hsp) * facing;

//apply movement
x += hsp;
y += vsp;

//apply animations
image_xscale = facing;