var dt = get_delta_time()

shot_timer[0] += dt
if( timer_is_done( shot_timer ) )
{
	shot_timer[0] = 0.0
	
	if( cur_shot < barrage_size )
	{
		var player = get_player()
		bullet_single( x,y,enemy_jelly_bullet_obj,
			get_target_angle( x,y,player.x,player.y ),0.1 )
			
		cur_shot += 1
	}
}

retarget_timer[0] += dt
if( timer_is_done( retarget_timer ) )
{
	retarget_timer[0] = 0.0
	
	var player = get_player()
	x_vel = player.x - x
	y_vel = player.y - y
	var len = get_len( x_vel,y_vel )
	x_vel /= len
	y_vel /= len
	
	cur_shot = 0
}

handle_block_collision( x_vel * move_speed * dt,y_vel * move_speed * dt )

anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.97 )