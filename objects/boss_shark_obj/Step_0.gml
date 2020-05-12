var dt = get_delta_time()

// Animation stuff.
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.97 )

retarget_timer[0] += dt
if( timer_is_done( retarget_timer ) )
{
	retarget_timer[0] = 0.0
	var player = get_player()
	x_vel = player.x - x
	y_vel = player.y - y
	var len = get_len( x_vel,y_vel )
	x_vel = x_vel / len * move_speed
	y_vel = y_vel / len * move_speed
	
	if( target_player )
	{
		x_vel *= -random_range( 0.9,1.2 )
		y_vel *= -random_range( 0.9,1.2 )
		
		bullet_circle( x,y,enemy_snake_bullet_obj,
			random_range( 3,7 ),pi / 12.0 )
	}
	target_player = !target_player
	
	bullet_shotgun( x,y,enemy_crab_bullet_obj,
		random_range( 0.0,pi * 2.0 ),
		random_range( 2,5 ),
		pi / 6.0,pi / 12.0 )
}

handle_block_collision( x_vel * dt,y_vel * dt )