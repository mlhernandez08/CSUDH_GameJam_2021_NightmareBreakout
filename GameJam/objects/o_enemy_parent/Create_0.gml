hurt = false;
hurt_time = room_speed * 1.5;
hp = 2;
flash_counter = 0;

//slowdown
drag = 0.12;

// smoke on spawn
if room == rm_02 {
	alarm[SPAWN] = 1;
}