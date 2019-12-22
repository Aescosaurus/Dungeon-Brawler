var up = argument0
var down = argument1
var left = argument2
var right = argument3
var spd = argument4

var dt = get_delta_time()
var x_move = 0.0
var y_move = 0.0

if( keyboard_check( up ) ) --y_move
if( keyboard_check( down ) ) ++y_move
if( keyboard_check( left ) ) --x_move
if( keyboard_check( right ) ) ++x_move

// Apply transformation and update sprite.
var len = get_len( x_move,y_move )
if( len > 0.0 )
{
	// x += ( x_vel / len ) * move_speed * dt
	// y += ( y_vel / len ) * move_speed * dt
	var test_x_move = ( x_move / len ) * spd * dt
	var test_y_move = ( y_move / len ) * spd * dt
	handle_block_collision( test_x_move,test_y_move )
	
	if( x_move > 0.0 ) image_xscale = 1.0
	else if( x_move < 0.0 ) image_xscale = -1.0
}

result[0] = x_move
result[1] = y_move

return( result )