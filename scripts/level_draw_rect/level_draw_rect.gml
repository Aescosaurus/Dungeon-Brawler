var x_start = argument0
var y_start = argument1
var width = argument2
var height = argument3
var data = argument4
var tilemap = argument5

for( var ty = y_start; ty < y_start + height; ++ty )
{
	for( var tx = x_start; tx < x_start + width; ++tx )
	{
		tilemap_set( tilemap,data,tx,ty )
	}
}