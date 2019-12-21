var dt = get_delta_time()

// Gather movement input.
var x_vel = 0.0
var y_vel = 0.0
if( keyboard_check( ord( "W" ) ) ) --y_vel
if( keyboard_check( ord( "S" ) ) ) ++y_vel
if( keyboard_check( ord( "A" ) ) ) --x_vel
if( keyboard_check( ord( "D" ) ) ) ++x_vel

// Apply transformation and update sprite.
var len = get_len( x_vel,y_vel )
if( len > 0.0 )
{
	// x += ( x_vel / len ) * move_speed * dt
	// y += ( y_vel / len ) * move_speed * dt
	var test_x_move = ( x_vel / len ) * move_speed * dt
	var test_y_move = ( y_vel / len ) * move_speed * dt
	handle_block_collision( test_x_move,test_y_move )
	
	if( x_vel > 0.0 ) image_xscale = 1.0
	else if( x_vel < 0.0 ) image_xscale = -1.0
}

// Handle shooting magic missiles.
if( timer_update( shoot_timer ) && len > 0.0 )
{
	timer_reset( shoot_timer )
	
	var bullet = instance_create_layer( x,y,"instances",magic_missile_obj )
	bullet.x_vel = x_vel / len
	bullet.y_vel = y_vel / len
	bullet.image_angle = radtodeg( -arctan2( y_vel,x_vel ) + pi + pi / 4.0 )
}