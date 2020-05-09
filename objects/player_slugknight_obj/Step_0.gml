var dt = get_delta_time()
var vels = handle_player_movement( ord( "W" ),ord( "S" ),ord( "A" ),ord( "D" ),move_speed )
var x_vel = vels[0]
var y_vel = vels[1]
var len = get_len( x_vel,y_vel )

// Handle shooting magic missiles.
attack_timer[0] += dt
if( timer_is_done( attack_timer ) && len > 0.0 )
{
	attack_timer[0] = 0.0
	attacking = true
	
	for( var i = 0; i < 2; ++i )
	{
		var bullet = instance_create_layer( x,y,"instances",sword_slash_obj )
		bullet.x_vel = x_vel / len
		bullet.y_vel = y_vel / len
		bullet.image_angle = radtodeg( -arctan2( y_vel,x_vel ) - pi / 2.5 + i * ( pi / 8.0 ) )
	}
	// shake_screen( 1.0 )
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