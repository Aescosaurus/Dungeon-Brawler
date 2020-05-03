var dt = get_delta_time()

shot_timer[0] += dt
if( instance_exists( target_player ) )
{
	ai_follow_target( target_player,move_speed )
	
	if( get_len( target_player.x - x,target_player.y - y ) < retarget_dist )
	{
		target_player = get_rand_player()
		if( timer_is_done( shot_timer ) )
		{
			shot_timer[0] = 0.0
			bullet_shotgun( x,y,enemy_butcher_bullet_obj,
				get_target_angle( x,y,target_player.x,target_player.y ),
				shot_count,bullet_spread,0.0 )
		}
	}
}
else
{
	target_player = get_player()
}

anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.94 )
