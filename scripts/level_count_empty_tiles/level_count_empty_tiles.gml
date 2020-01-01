var tilemap = layer_tilemap_get_id( "tilemap" )
var width = tilemap_get_width( tilemap )
var height = tilemap_get_height( tilemap )
var tile_width = tilemap_get_tile_width( tilemap )
var tile_height = tilemap_get_tile_height( tilemap )

var empty_tiles = 0
for( var yy = 0; yy < height; ++yy )
{
	for( var xx = 0; xx < width; ++xx )
	{
		if( tilemap_get_at_pixel( tilemap,xx * tile_width,yy * tile_height ) < 2 )
		{
			++empty_tiles
		}
	}
}

return( empty_tiles )