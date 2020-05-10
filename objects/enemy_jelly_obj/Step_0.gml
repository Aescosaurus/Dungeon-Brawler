var dt = get_delta_time()

retarget_timer[0] += dt
if( timer_is_done( retarget_timer ) )
{
	retarget_timer[0] = 0.0
	
	player = get_rand_player()
	
	bullet_shotgun( x,y,enemy_jelly_bullet_obj,
		get_target_angle( x,y,player.x,player.y ),
		3,bullet_spread,0.0 )
}

if( instance_exists( player ) )
{
	var dist = get_len_sq( player.x - x,player.y - y )
	if( dist < follow_dist * follow_dist ) ai_maintain_distance( player,dist,move_speed )
	else ai_follow_target( player,move_speed )
}
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.90 )