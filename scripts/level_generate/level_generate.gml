var tilemap = layer_tilemap_get_id( "tilemap" )
var width = tilemap_get_width( tilemap )
var height = tilemap_get_height( tilemap )
var scr_rect = rect_create( 0,width,0,height )
var tile_width = tilemap_get_tile_width( tilemap )
var tile_height = tilemap_get_tile_height( tilemap )

random_set_seed( current_time )

level_draw_rect( 0,0,width,height,2,tilemap,scr_rect )

level_draw_circle( random_range( 0,width ),random_range( 0,height ),
	random_range( 4,10 ),1,tilemap,scr_rect )
for( var i = 0; i < 7; ++i )
{
	var adj_tiles = -1
	var tries = 0
	do
	{
		rand_x = random_range( 1,width - 1 )
		rand_y = random_range( 1,height - 1 )
		
		adj_tiles =  0
		for( var vy = -1; vy < 1; ++vy )
		{
			for( var vx = -1; vx < 1; ++vx )
			{
				if( tilemap_get_at_pixel( tilemap,
					( rand_x + vx ) * tile_width,( rand_y + vy ) * tile_height ) < 2 )
				{
					++adj_tiles
				}
			}
		}
	}
	until( tilemap_get_at_pixel( tilemap,rand_x * tile_width,rand_y * tile_height ) < 2 &&
		( ++tries > 9999 || adj_tiles < 3 ) )
	
	// level_draw_rect( rand_x - 2,rand_y - 2,3,3,
	// 	3,tilemap,scr_rect )
	// level_draw_circle( rand_x,rand_y,3,3,tilemap,scr_rect )
	
	if( random_range( 0,100 ) < 60 )
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