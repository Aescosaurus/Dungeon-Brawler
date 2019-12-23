var tilemap = layer_tilemap_get_id( "tilemap" )
var width = tilemap_get_width( tilemap )
var height = tilemap_get_height( tilemap )
var scr_rect = rect_create( 0,width,0,height )

level_draw_rect( 0,0,width,height,2,tilemap,scr_rect )

var rand_x = random_range( 0,7 )
var rand_y = random_range( 0,7 )
level_draw_circle( rand_x,rand_y,
	random_range( 4,10 ),1,tilemap,scr_rect )
for( var i = 0; i < 5; ++i )
{
	// do
	// {
	// 	rand_x = random_range( 0,width )
	// 	rand_y = random_range( 0,height )
	// }
	// until( tilemap_get_at_pixel( tilemap,rand_x,rand_y ) < 2 );
	
	rand_x += random_range( 0,3 )
	rand_y += random_range( 0,3 )
	
	if( random_range( 0,100 ) < 50 )
	{
		level_draw_rect( rand_x,rand_y,random_range( 4,10 ),random_range( 4,10 ),
			1,tilemap,scr_rect )
	}
	else
	{
		level_draw_circle( rand_x,rand_y,random_range( 4,10 ),
			1,tilemap,scr_rect )
	}
}

level_draw_rect( 0,0,width,1,2,tilemap,scr_rect )
level_draw_rect( width - 1,0,1,height,2,tilemap,scr_rect )
level_draw_rect( 0,height - 1,width,1,2,tilemap,scr_rect )
level_draw_rect( 0,0,1,height,2,tilemap,scr_rect )