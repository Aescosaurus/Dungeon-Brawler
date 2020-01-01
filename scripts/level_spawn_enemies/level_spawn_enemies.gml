var level = game_manager_obj.cur_level
var flr = game_manager_obj.cur_floor
var enemy_pool = game_manager_obj.enemy_pool
var enemy_parts = game_manager_obj.enemy_parts
var tilemap = layer_tilemap_get_id( "tilemap" )

var low = max( 3,level / 4 )
var high = min( low + 2,level / 2 )
for( var i = 0; i < random_range( low,high ); ++i )
{
	var x_pos = -1
	var y_pos = -1
	do
	{
		x_pos = random_range( 0,room_width )
		y_pos = random_range( 0,room_height )
	}
	until( tilemap_get_at_pixel( tilemap,x_pos,y_pos ) < 2 )
	
	var max_enemy = 0
	if( level < 2 ) max_enemy = 0
	else if( level < 5 ) max_enemy = 1
	else if( level < 8 ) max_enemy = 2
	else/* if( level < 12 )*/ max_enemy = 3
	var rand_num = irandom_range( 0,max_enemy )
	
	var spawner = instance_create_layer( x_pos,y_pos,"instances",
		enemy_spawner_obj )
	spawner.x = x_pos
	spawner.y = y_pos
	spawner.enemy = enemy_pool[flr,rand_num]
	spawner.particle_spr = enemy_parts[flr,rand_num]
}