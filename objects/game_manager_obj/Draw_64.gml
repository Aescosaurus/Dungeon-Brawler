draw_set_font( pixel_font )

var x_draw = 0
var y_draw = 0

var text = string( cur_level + 1 )
var outline = 2

draw_set_color( make_color_rgb( 115,70,76 ) )

for( var yc = -outline; yc <= outline; ++yc )
{
	for( var xc = -outline; xc <= outline; ++xc )
	{
		draw_text( x_draw + xc,y_draw + yc,text )
	}
}

draw_set_color( make_color_rgb( 255,167,165 ) )
draw_text( x_draw,y_draw,text )