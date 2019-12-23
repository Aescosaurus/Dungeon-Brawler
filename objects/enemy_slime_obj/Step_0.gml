var dt = get_delta_time()

// Animation stuff.
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
play_walk_anim( anim_timer,0.95 )

// Ai movement stuff.
ai_maintain_distance( get_player(),hover_dist,move_speed )

// Attack player.
shoot_timer[0] += dt
if( timer_is_done( shoot_timer ) )
{
	shoot_timer[0] = 0.0
	var bullet = instance_create_layer( x,y,"instances",enemy_slime_bullet_obj )
	var player = get_player()
	var x_diff = player.x - x
	var y_diff = player.y - y
	var len = get_len( x_diff,y_diff )
	bullet.x_vel = x_diff / len
	bullet.y_vel = y_diff / len
	bullet.image_angle = random_range( 0.0,360.0 )
}