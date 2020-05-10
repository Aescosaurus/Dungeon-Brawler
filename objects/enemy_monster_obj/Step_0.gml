var dt = get_delta_time()

if( instance_exists( target ) )
{
	ai_maintain_distance( target,target_dist,move_speed )
}
else
{
	if( instance_number( enemy_monster_obj ) < 2 )
	{
		target = get_player()
	}
	else
	{
		target = instance_find( enemy_monster_obj,
			random_range( 0,instance_number( enemy_monster_obj ) ) )
	}
}

shot_timer[0] += dt
if( timer_is_done( shot_timer ) )
{
	shot_timer[0] = 0.0
	bullet_shotgun( x,y,enemy_alien_bullet_obj,
		shot_angle,shot_count,bullet_spread,pi / 32.0 )
	shot_angle += shot_rot_speed
}

anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.91 )
