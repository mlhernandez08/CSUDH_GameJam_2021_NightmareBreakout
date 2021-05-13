// 720x360
// get gui dimensions
var gw = display_get_gui_width();
var gh = display_get_gui_height();

if room != rm_menu {
	if room != rm_game_end {
		// HP bar
		#region
		xx = 48;
		yy = 25;
		draw_sprite(s_hp_bar, 1, xx, yy);
		draw_sprite_ext(s_hp_bar, 2, xx, yy, o_player.hp/o_player.max_hp, 1, 0, c_white, image_alpha);
		draw_sprite(s_hp_bar, 0, xx, yy);
		#endregion

	}
	// game over
	#region
	if game_over_lose  {
			var mx = gw/2;
			var my = gh/2;
		// draw game over
		draw_sprite(s_game_over, 0, mx, my);
		if game_over_lose var _index = 0;
		draw_sprite(s_game_over_text, _index, mx, my);
		draw_set_halign(fa_right);
		draw_set_color(c_white);
	}
	#endregion
} else {
	// draw main menu and fade to first level
	// draw bounce
	var start_y = 350;	// how far the anim moves
	var factor = start_y;
	
	var max_frames = 60;		// how long animation goes for
	if current_frame < max_frames {
		current_frame++;
		var move = EaseOutBounce(current_frame, 0, 1, max_frames);
	} else {
		move = 1;
		// allow game start
		if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0, gp_face1)) and
		!instance_exists(o_fade) {
			// sound
			audio_play_sound(snd_game_start, 15, false);
			fade_to_room(room_next(room), 0, 0, 1, c_black);	
		}
	}
	draw_sprite(s_main_menu, 1, 0, (move * factor) - start_y);
}

// fade screen in
if fade_in {
	alpha = lerp(alpha, 0, fade_spd);
	draw_set_alpha(alpha);
	draw_rectangle_color(0, 0, gw, gh, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

// display msg
if alarm[DISPLAY_MSG] > 0 {
	draw_set_halign(fa_center);	
	draw_set_font(fnt_tahoma);
	draw_set_color(c_black);
	draw_text(gw/2 + 1, gh * .85 + 1, msg);
	draw_set_color(c_white);
	draw_text(gw/2, gh * .85, msg);
}