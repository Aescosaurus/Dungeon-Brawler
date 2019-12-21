var target = argument0
var speed_val = argument1

var dt = get_delta_time()

var x_diff = target.x - x
var y_diff = target.y - y

var len = get_len( x_diff,y_diff )
var test_x_move = ( x_diff / len ) * speed_val * dt
var test_y_move = ( y_diff / len ) * speed_val * dt
handle_block_collision( test_x_move,test_y_move )