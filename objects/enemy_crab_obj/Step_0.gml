var dt = get_delta_time()

shot_timer[0] += dt
if( timer_is_done( shot_timer ) )
{
	shot_timer[0] = 0.0
	
	bullet_shotgun( x,y,enemy_crab_bullet_obj,
		random_range( 0.0,pi * 2.0 ),2,pi,0.0 )
}

retarget_timer[0] += dt
if( timer_is_done( retarget_timer ) )
{
	retarget_timer[0] = 0.0
	x_vel = random_range( -1.0,1.0 )
	y_vel = random_range( -1.0,1.0 )
	var len = get_len( x_vel,y_vel )
	x_vel /= len
	y_vel /= len
}

handle_block_collision( x_vel * move_speed * dt,y_vel * move_speed * dt )

anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.97 )