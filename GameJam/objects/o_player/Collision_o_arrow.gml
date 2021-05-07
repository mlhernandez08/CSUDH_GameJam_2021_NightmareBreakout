var take_damage = false;

// only do if arrow is not set to die
if !other.die {
	// if looking away, then take damage
	if facing == other.facing {
		take_damage = true;	
	} else {
		// facing arrow
		if block {
			if down {
				// blocking and crouching
				other.die = true;
			} else {
				take_damage = true;	
			}
		}  else {
			//not blocking
			take_damage = true;
		}
	}
	// dont take damage if dead
	if hp <= 0 
		take_damage = false;
		
	if take_damage {
		if !hurt {
			hurt = true;
			
			// damage player
			hp -= 1;
			
			// set hurt time
			alarm[HURT] = hurt_time;
			
			// screen shakke
			scr_screen_shake(.125, -1);
		} else {
			other.die = true;
		}
	}
}