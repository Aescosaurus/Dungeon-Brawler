var test_x_move = argument0
var test_y_move = argument1

var half_width = sprite_get_width( sprite_index ) / 2
var half_height = sprite_get_height( sprite_index ) / 2
var x_dir = test_x_move / abs( test_x_move )
var y_dir = test_y_move / abs( test_y_move )
var tilemap = layer_tilemap_get_id( "tilemap" )

if( tilemap_get_at_pixel( tilemap,x + half_width * x_dir,y ) < 2 )
{
	x += test_x_move
}
else if( test_x_move != 0.0 )
{
	var total_move = 0.0
	while( tilemap_get_at_pixel( tilemap,x + half_width * x_dir,y ) < 2 )
	{
		x += x_dir
		if( ++total_move > abs( test_x_move ) ) break
	}
}

if( tilemap_get_at_pixel( tilemap,x,y + half_height * y_dir ) < 2 )
{
	y += test_y_move
}
else if( test_y_move != 0.0 )
{
	var total_move = 0.0
	while( tilemap_get_at_pixel( tilemap,x,y + half_height * y_dir ) < 2 )
	{
		y += y_dir
		if( ++total_move > abs( test_y_move ) ) break
	}
}