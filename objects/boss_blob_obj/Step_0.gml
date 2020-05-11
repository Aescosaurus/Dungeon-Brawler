var dt = get_delta_time()

// Animation stuff.
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.99 )

shot_timer[0] += dt
if( timer_is_done( shot_timer ) )
{
	shot_timer[0] = 0.0
	
	bullet_shotgun( x,y,enemy_slime_bullet_obj,
		shot_angle,
		shot_count,shot_spread,pi / 24.0 )
	
	shot_angle += shot_rot_speed
}