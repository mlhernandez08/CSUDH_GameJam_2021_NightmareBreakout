// die
function check_enemy_hp(){
	if hp <= 0 {
		// play death sound
		audio_play_sound(snd_enemy_dying, 10, false);
		
			// generate particles
			repeat(o_game.enemy_sparks) {
				var inst = instance_create_depth(x, (bbox_bottom + bbox_top)/ 2, depth -1, o_spark);
				switch(object_index) {
					case o_frog:
						if choose(0, 1 ,1) {
							// gray
							inst.col_head = c_gray;
							inst.col_tail = c_dkgray;
						} else {
							// white
							inst.col_head = c_white;
							inst.col_head = c_ltgray;
						}
					break;
					case o_bug:
						if choose(0, 1 ,1) {
							// red
							inst.col_head = c_red;
							inst.col_tail = c_maroon;
						} else {
							// green
							inst.col_head = c_black;
							inst.col_head = c_dkgray;
						}
					break;
				}
			}
		//screen_shake
		scr_screen_shake(.15, -1);
		instance_destroy();
	}
}