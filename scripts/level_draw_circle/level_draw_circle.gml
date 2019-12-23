var x_start = argument0
var y_start = argument1
var radius = argument2
var data = argument3
var tilemap = argument4
var scr_rect = argument5

for( var ty = y_start - radius; ty < y_start + radius; ++ty )
{
	for( var tx = x_start - radius; tx < x_start + radius; ++tx )
	{
		var x_diff = tx - x_start
		var y_diff = ty - y_start
		if( x_diff * x_diff + y_diff * y_diff <= radius * radius &&
			rect_contains( scr_rect,tx,ty ) )
		{
			tilemap_set( tilemap,data,tx,ty )
		}
	}
}