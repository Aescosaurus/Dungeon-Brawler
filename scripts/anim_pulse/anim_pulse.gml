var timer = argument0
var scale_factor = argument1

var scale = 1.0 + sin( degtorad( ( timer[0] / timer[1] ) * 360.0 ) ) / scale_factor

image_xscale = scale
image_yscale = scale