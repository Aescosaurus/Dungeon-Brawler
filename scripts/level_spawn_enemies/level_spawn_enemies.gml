var tilemap = layer_tilemap_get_id( "tilemap" )

for( var i = 0; i < random_range( 2,6 ); ++i )
{
	var x_pos = -1
	var y_pos = -1
	do
	{
		x_pos = random_range( 0,room_width )
		y_pos = random_range( 0,room_height )
	}
	until( tilemap_get_at_pixel( tilemap,x_pos,y_pos ) < 2 )
	
	var enemy = noone
	var num = random_range( 0,100 )
	if( num < 50 || game_manager_obj.cur_floor < 2 )
	{
		enemy = enemy_slime_obj
	}
	else
	{
		enemy = enemy_snake_obj
	}
	
	enemy = instance_create_layer( x_pos,y_pos,"instances",enemy )
	
	enemy.x = x_pos
	enemy.y = y_pos
}