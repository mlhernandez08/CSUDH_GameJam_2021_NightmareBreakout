/// @description
global.grav = 0.25;

// set gui size
display_set_gui_size(720, 360);

// how many sparks come off gems
gem_sparks = 6;
// how many sparks come off dead enemies
enemy_sparks = 6;

// game over
// game over and lost
game_over_lose = false;

// game over and win
game_over_won = false;

current_frame = 0;

// fade in menu
fade_in = true;
alpha = 1;
fade_spd = 0.02;