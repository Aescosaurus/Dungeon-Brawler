var dt = get_delta_time()

shot_timer[0] += dt
if( timer_is_done( shot_timer ) )
{
	shot_timer[0] = 0.0
	
	var player = get_player()
	bullet_single( x,y,enemy_jelly_bullet_obj,
		get_target_angle( x,y,player.x,player.y ),0.0 )
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