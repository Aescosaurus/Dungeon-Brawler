var target = argument0
var speed_val = argument1

var dt = get_delta_time()

var x_diff = target.x - x
var y_diff = target.y - y

var len = get_len( x_diff,y_diff )
x += ( x_diff / len ) * speed_val * dt
y += ( y_diff / len ) * speed_val * dt