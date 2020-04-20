// Set up initial parameters.
var tilemap = layer_tilemap_get_id( "tilemap" )
var width = tilemap_get_width( tilemap )
var height = tilemap_get_height( tilemap )
var scr_rect = rect_create( 0,width,0,height )
var tile_width = tilemap_get_tile_width( tilemap )
var tile_height = tilemap_get_tile_height( tilemap )

randomize()

// Start off with completely walled level.
level_draw_rect( 0,0,width,height,2,tilemap,scr_rect )

if( room == desert_room )
{
	// TODO: Cooler desert room generation.
	
	// Create empty areas inside the level, make sure they all touch.
	level_draw_circle( random_range( 0,width ),random_range( 0,height ),
		random_range( 4,10 ),1,tilemap,scr_rect )
	// for( var i = 0; i < 7; ++i )
	while( level_count_empty_tiles() < width * height * 0.6 )
	{
		var adj_tiles = -1
		var tries = 0
		do
		{
			var rand_x = random_range( 1,width - 1 )
			var rand_y = random_range( 1,height - 1 )
			
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
	
	var rand_x = irandom_range( 0,width )
	var rand_y = irandom_range( 0,height )
	for( var i = 0; i < random_range( 4,7 ); ++i )
	{
		level_draw_rect( rand_x,rand_y,1,1,
			2,tilemap,scr_rect )
		if( random_range( 0,100 ) < 50 ) rand_x += irandom_range( -1,1 )
		else rand_y += irandom_range( -1,1 )
	}
}
else if( room == sea_room )
{
	var last_circle = circle_create(
		random_range( 0,width ),
		random_range( 0,height ),
		random_range( 3,6 ) )
	while( level_count_empty_tiles() < width * height * 0.6 )
	{
		var cur_circle = circle_create(
			random_range( 0,width ),
			random_range( 0,height ),
			random_range( 3,6 ) )
		var rand1 = circle_get_rand_pos( last_circle )
		var rand2 = circle_get_rand_pos( cur_circle )
		
		level_draw_rect_dim( rand1[0],rand1[1],rand2[0],rand2[1],
			1,tilemap,scr_rect )
		level_draw_circle( last_circle[0],last_circle[1],last_circle[2],
			1,tilemap,scr_rect )
		level_draw_circle( cur_circle[0],cur_circle[1],cur_circle[2],
			1,tilemap,scr_rect )
		last_circle = cur_circle
	}
}
else // if( room == volcano_room )
{
	var last_circle = circle_create(
		random_range( 0,width ),
		random_range( 0,height ),
		random_range( 3,6 ) )
	while( level_count_empty_tiles() < width * height * 0.6 )
	{
		var rand_pos = circle_get_rand_pos( last_circle )
		while( !rect_contains( scr_rect,rand_pos[0],rand_pos[1] ) )
		{
			rand_pos = circle_get_rand_pos( last_circle )
		}
		var cur_circle = circle_create(
			rand_pos[0],rand_pos[1],
			random_range( 3,6 ) )
		level_draw_circle( last_circle[0],last_circle[1],last_circle[2],
			1,tilemap,scr_rect )
		level_draw_rect( irandom_range( 0,width ),irandom_range( 0,height ),
			1,1,2,tilemap,scr_rect )
		last_circle = cur_circle
	}
}

// Make sure players cannot escape the level.
level_draw_rect( 0,0,width,1,2,tilemap,scr_rect )
level_draw_rect( width - 1,0,1,height,2,tilemap,scr_rect )
level_draw_rect( 0,height - 1,width,1,2,tilemap,scr_rect )
level_draw_rect( 0,0,1,height,2,tilemap,scr_rect )

for( var i = 0; i < width * height * 0.1; ++i )
{
	var rand_x = random_range( 0,width * tile_width )
	var rand_y = random_range( 0,height * tile_height )
	if( tilemap_get_at_pixel( tilemap,rand_x,rand_y ) > 1 )
	{
		tilemap_set_at_pixel( tilemap,3,rand_x,rand_y )
	}
}

// Set alarms that spawn players and enemies.
alarm_set( 0,60 * 0.1 )

alarm_set( 1,60 * 2.0 )