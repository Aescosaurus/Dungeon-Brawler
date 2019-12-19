var target = argument0
var dist = argument1
var spd = argument2

var x_diff = target.x - x
var y_diff = target.y - y
var len = get_len( x_diff,y_diff )

var padding = spd
var move = 0.0
if( len > dist + padding ) move = 1.0
else if( len < dist - padding ) move = -1.0

var dt = get_delta_time()
x += ( x_diff / len ) * move * spd * dt
y += ( y_diff / len ) * move * spd * dt