var timer = argument0
var squish_factor = argument1

// if( timer_update( timer,get_delta_time() / ( image_yscale * 5.0 ) ) ) timer_reset( timer )z

var x_val = ( sin( ( timer[0] / timer[1] ) * pi * 2.0 ) + pi ) / 4.0 // eww
var y_val = ( 1.5 - x_val )

var x_dir = image_xscale / abs( image_xscale )
var y_dir = image_yscale / abs( image_yscale )

image_xscale = x_dir * x_val * squish_factor
image_yscale = y_dir * y_val / squish_factor