var tilemap = layer_tilemap_get_id( "tilemap" )
var width = tilemap_get_width( tilemap )
var height = tilemap_get_height( tilemap )

level_draw_rect( 0,0,width,height,1,tilemap )
// Create actual levels inside here.

//
level_draw_rect( 0,0,width,1,2,tilemap )
level_draw_rect( width - 1,0,1,height,2,tilemap )
level_draw_rect( 0,height - 1,width,1,2,tilemap )
level_draw_rect( 0,0,1,height,2,tilemap )