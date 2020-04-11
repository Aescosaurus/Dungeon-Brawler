var tilemap = layer_tilemap_get_id( "tilemap" )
var width = tilemap_get_width( tilemap )
var height = tilemap_get_height( tilemap )
var tile_width = tilemap_get_tile_width( tilemap )
var tile_height = tilemap_get_tile_height( tilemap )

if( instance_number( player_mage_obj ) < 1 ) instance_create_layer( 0,0,"instances",player_mage_obj )
if( instance_number( player_slugknight_obj ) < 1 ) instance_create_layer( 0,0,"instances",player_slugknight_obj )
if( instance_number( player_astronomer_obj ) < 1 ) instance_create_layer( 0,0,"instances",player_astronomer_obj )

for( var i = 0; i < instance_number( player_base_obj ); ++i )
{
	var player = instance_find( player_base_obj,i )
	var rand_x = random_range( 0,width )
	var rand_y = random_range( 0,height )
	do
	{
		rand_x = random_range( 0,width )
		rand_y = random_range( 0,height )
	}
	until( tilemap_get_at_pixel( tilemap,rand_x * tile_width,rand_y * tile_height ) < 2 )
	
	player.x = rand_x * tile_width
	player.y = rand_y * tile_height
}