/// @description
//speeds
hsp = 0;
vsp = 0;
max_hsp = 2;
walk_spd = 1.5;
hsp_decimal = 0;
vsp_decimal = 0;
jump_spd = -5;
jump_dampner = 2.5;
jumps_initial = 2;
jumps = jumps_initial;

//friction
drag = .12;
//stretching
scale_x = 1;
scale_y = 1;
scale_min = 0.75;
scale_max = 1.25;
scale_decay = 0.2;

// gems
gems = 0;
gems_value = 50;

// set rm_00 start postion
room_start_pos_x = 72;
room_start_pos_y = 223;
room_start_facing = 1;
x = room_start_pos_x;
y = room_start_pos_y;
//facing direction
facing = room_start_facing;

// hurt
flash_counter = 0;
hurt = false;
hurt_time = room_speed;
hp = 5;
max_hp = hp;
// how long enemies get knocked back for when hit
knockback_time = room_speed / 2;
knockback_dis = 1.5;

// lives
lives_initial = 3;
lives = lives_initial;
lives_value = 1000;

//movement
left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
block = 0;
jump_held = 0;

//camera
o_camera.follow = o_player;

//states
enum states {
	IDLE,
	WALK,
	JUMP,
	ATTACK,
	BLOCK,
	CROUCH,
	CROUCH_BLOCK,
	HURTING,
	KNOCKBACK, 
	DIE
	
}

state = states.IDLE;

//create states array
states_array[states.IDLE]			= player_idle_state;
states_array[states.WALK]			= player_walk_state;
states_array[states.JUMP]			= player_jump_state;
states_array[states.ATTACK]			= player_attack_state;
states_array[states.BLOCK]			= player_block_state;
states_array[states.CROUCH]			= player_crouch_state;
states_array[states.CROUCH_BLOCK]	= player_crouch_block_state;
states_array[states.HURTING]		= player_hurting_state;
states_array[states.KNOCKBACK]		= player_knockback_state;
states_array[states.DIE]			= player_die_state;

//create sprites array
sprites_array[states.IDLE]			= s_player_idle;
sprites_array[states.WALK]			= s_player_walk;
sprites_array[states.JUMP]			= s_player_jump;
sprites_array[states.ATTACK]		= s_player_attack;
sprites_array[states.BLOCK]			= s_player_block;
sprites_array[states.CROUCH]		= s_player_crouch;
sprites_array[states.CROUCH_BLOCK]	= s_player_crouch_block;
sprites_array[states.HURTING]		= s_player_hurting;
sprites_array[states.KNOCKBACK]		= s_player_knockback;
sprites_array[states.DIE]			= s_player_die;

//create mask array
mask_array[states.IDLE]			= s_player_idle;
mask_array[states.WALK]			= s_player_idle;
mask_array[states.JUMP]			= s_player_idle;
mask_array[states.ATTACK]		= s_player_idle;
mask_array[states.BLOCK]		= s_player_idle;
mask_array[states.CROUCH]		= s_player_crouch;
mask_array[states.CROUCH_BLOCK]	= s_player_crouch;
mask_array[states.HURTING]		= s_player_idle;
mask_array[states.KNOCKBACK]	= s_player_idle;
mask_array[states.DIE]			= s_player_die;