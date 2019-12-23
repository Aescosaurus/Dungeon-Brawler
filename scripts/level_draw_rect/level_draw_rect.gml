var x_start = argument0
var y_start = argument1
var width = argument2
var height = argument3
var data = argument4
var tilemap = argument5
var scr_rect = argument6

if( width < 0 )
{
	x_start += width
	width *= -1
}
if( height < 0 )
{
	y_start += height
	height *= -1
}

for( var ty = y_start; ty < y_start + height; ++ty )
{
	for( var tx = x_start; tx < x_start + width; ++tx )
	{
		if( rect_contains( scr_rect,tx,ty ) ) tilemap_set( tilemap,data,tx,ty )
	}
}