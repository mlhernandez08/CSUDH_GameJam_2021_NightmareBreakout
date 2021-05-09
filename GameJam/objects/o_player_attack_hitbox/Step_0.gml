// cycle through all enemies and see of they were hit
with(o_enemy_parent) {
	if distance_to_object(other) < 60 {
		if place_meeting(x, y, other) {
			if !hurt {
				hurt = true;
			
				// get sign direction from hitbox to enemy
				var _dir = sign(x - other.x);
			
				// ensure objects are not at thhe same x
				if _dir == 0 
					_dir = 1;
				
				// move away from the hitbox
				var knockback_dis = 3;
				hsp = _dir * knockback_dis;
				
				// face the hitbox if on ground
				if on_ground() 
					facing = -_dir;
			
				// damage enemy 
				hp -= 1;
			
				// set hurt timer
				alarm[HURT] = hurt_time;
				
				// screen_shake
				scr_screen_shake(.1, 1.5);
				
				// sound
				if !audio_is_playing(snd_sword_hit)
					audio_play_sound(snd_sword_hit, 15, false);
				
				/* use if only want one hit effect to occur with multiple enemy hits
				var _create = true;
				if instance_exists(o_sword_hit) {
					//with(o_sword_hit) if image_index <= 1 _create = false;
				}
				if _create {*/
					var inst = instance_create_depth(x, (bbox_top + bbox_bottom)/2, depth - 1, o_sword_hit);
					inst.image_xscale = o_player.facing;
					if hp <= 0 {
						var inst = instance_create_depth(x, (bbox_top + bbox_bottom)/2, depth - 1, o_sword_hit);
						inst.image_xscale = o_player.facing;
						inst.sprite_index = s_sword_hit2;
					}
				//}
			}
		}
	}
}

// destroy arrows that are hit
var inst = instance_place(x, y, o_arrow);
if inst != noone
	inst.die = true;	
	
// @description enable death at begin step
die = true;