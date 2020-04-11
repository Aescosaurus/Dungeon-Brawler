var x_start = argument0
var y_start = argument1
var x_end = argument2
var y_end = argument3
var data = argument4
var tilemap = argument5
var scr_rect = argument6

if( x_end < x_start )
{
	var temp = x_start
	x_start = x_end
	x_end = temp
}
if( y_end < y_start )
{
	var temp = y_start
	y_start = y_end
	y_end = temp
}

for( var ty = y_start; ty < y_end; ++ty )
{
	for( var tx = x_start; tx < x_end; ++tx )
	{
		if( rect_contains( scr_rect,tx,ty ) ) tilemap_set( tilemap,data,tx,ty )
	}
}