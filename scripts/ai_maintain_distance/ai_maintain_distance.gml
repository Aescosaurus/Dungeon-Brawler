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
var test_x_move = ( x_diff / len ) * move * spd * dt
var test_y_move = ( y_diff / len ) * move * spd * dt

handle_block_collision( test_x_move,test_y_move )

return( test_x_move != 0.0 || test_y_move != 0.0 )