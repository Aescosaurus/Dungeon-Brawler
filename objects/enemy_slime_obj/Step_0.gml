var dt = get_delta_time()

anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0

play_walk_anim( anim_timer,0.95 )

ai_maintain_distance( get_player(),hover_dist,move_speed )