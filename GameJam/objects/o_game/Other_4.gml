/// @description
// You can write your code in this editor
//tiles

//get tile map

global.map = layer_tilemap_get_id("Collisions");
global.tile_size = 32;
// player create
if !instance_exists(o_player) {
	instance_create_layer(x, y, "Player", o_player);	
}