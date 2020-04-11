var dt = get_delta_time()

// Animation stuff.
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.95 )

// Ai movement stuff.
var player = get_player()
ai_maintain_distance( player,hover_dist,move_speed )
image_xscale = ( player.x < x ) ? -abs( image_xscale ) : abs( image_xscale )

// Attack player.
shoot_timer[0] += dt
if( timer_is_done( shoot_timer ) )
{
	shoot_timer[0] = 0.0
	// var bullet = instance_create_layer( x,y,"instances",enemy_slime_bullet_obj )
	// var x_diff = player.x - x
	// var y_diff = player.y - y
	// var len = get_len( x_diff,y_diff )
	// bullet.x_vel = x_diff / len
	// bullet.y_vel = y_diff / len
	bullet_single( x,y,enemy_slime_bullet_obj,
		get_target_angle( x,y,player.x,player.y ),shot_dev )
}