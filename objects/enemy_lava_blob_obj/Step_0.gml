var dt = get_delta_time()

if( !shoot_mode )
{
	ai_follow_target( get_player(),move_speed )
	
	anim_timer[0] += dt
	if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
	anim_walk( anim_timer,0.94 )
	
	move_timer[0] += dt
	if( timer_is_done( move_timer ) )
	{
		move_timer[0] = 0.0
		shoot_mode = true
	}
}
else
{
	shot_timer[0] += dt
	
	if( timer_is_done( shot_timer ) )
	{
		shot_timer[0] = 0.0
		
		// bullet_circle( x,y,enemy_butcher_bullet_obj,4,0.0 )
		bullet_shotgun( x,y,enemy_butcher_bullet_obj,
			cur_shot * 45.0,4,45.0,0.0 )
		
		if( ++cur_shot > shot_count )
		{
			cur_shot = 0
			shoot_mode = false
		}
	}
}