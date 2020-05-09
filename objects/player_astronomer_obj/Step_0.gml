var dt = get_delta_time()

var x_vel = mouse_x - x
var y_vel = mouse_y - y
if( mouse_check_button( mb_left ) )
{
	var len = get_len( x_vel,y_vel )
	x_vel = x_vel / len * move_speed * dt
	y_vel = y_vel / len * move_speed * dt
	
	handle_block_collision( x_vel,y_vel )
	
	if( x_vel > 0.0 ) image_xscale = 1.0
	else if( x_vel < 0.0 ) image_xscale = -1.0
}

// Handle shooting magic missiles.
attack_timer[0] += dt
if( timer_is_done( attack_timer ) && mouse_check_button( mb_left ) )
{
	attack_timer[0] = 0.0
	attacking = true
	
	// for( var i = 0; i < 2; ++i )
	{
		var bullet = instance_create_layer( x,y,"instances",meteor_obj )
		bullet.x = mouse_x
		bullet.y = mouse_y - 32
		bullet.target_y = mouse_y
		// bullet.x_vel = x_vel / len
		// bullet.y_vel = y_vel / len
		// bullet.image_angle = radtodeg( -arctan2( y_vel,x_vel ) - pi / 2.5 + i * ( pi / 8.0 ) )
	}
	shake_screen( 2.0 )
}

if( attacking )
{
	anim_timer[0] += dt
	anim_attack( anim_timer,0.35,1.4 )
	if( timer_is_done( anim_timer ) )
	{
		anim_timer[0] = 0.0
		attacking = false
		image_xscale /= abs( image_xscale )
		image_yscale /= abs( image_yscale )
	}
}