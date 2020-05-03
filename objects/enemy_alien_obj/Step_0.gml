var dt = get_delta_time()

if( !instance_exists( target_player ) ) target_player = get_rand_player()
else if( get_len( target_player.x - x,target_player.y - y ) < retarget_dist )
{
	ai_maintain_distance( target_player,retarget_dist,move_speed )
}
else if( instance_exists( target_player ) ) ai_follow_target( target_player,move_speed )

anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.94 )
