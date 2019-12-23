var timer = argument0
var scale = argument1
var squish = argument2

var x_dir = image_xscale / abs( image_xscale )

image_xscale = x_dir * ( 1.0 - sin( degtorad( timer_get_percent( timer ) * 360.0 ) ) * scale )
image_yscale = abs( image_xscale ) / squish