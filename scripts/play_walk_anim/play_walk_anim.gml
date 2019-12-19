var timer = argument0
var squish_factor = argument1

if( timer_update( timer,get_delta_time() / ( image_yscale * 5.0 ) ) ) timer_reset( timer )

var x_val = ( sin( ( timer[0] / timer[1] ) * pi * 2.0 ) + pi ) / 4.0 // eww
var y_val = ( 1.5 - x_val )

image_xscale = x_val * squish_factor
image_yscale = y_val / squish_factor