var dt = get_delta_time()
var vels = handle_player_movement( vk_up,vk_down,vk_left,vk_right,move_speed )
var x_vel = vels[0]
var y_vel = vels[1]

shoot_timer[0] += dt

// Handle shooting magic missiles.
if( timer_is_done( shoot_timer ) && ( x_vel != 0.0 || y_vel != 0.0 ) )
{
	shoot_timer[0] = 0.0
	attacking = true
	
	var bullet = instance_create_layer( x,y,"instances",magic_missile_obj )
	var len = get_len( x_vel,y_vel )
	bullet.x_vel = x_vel / len
	bullet.y_vel = y_vel / len
	bullet.image_angle = radtodeg( -arctan2( y_vel,x_vel ) + pi + pi / 4.0 )
}

if( attacking )
{
	anim_timer[0] += dt
	anim_attack( anim_timer,0.2,1.4 )
	if( timer_is_done( anim_timer ) )
	{
		anim_timer[0] = 0.0
		attacking = false
		image_xscale /= abs( image_xscale )
		image_yscale /= abs( image_yscale )
	}
}