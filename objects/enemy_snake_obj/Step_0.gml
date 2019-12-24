var dt = get_delta_time()

// Animation stuff.
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.95 )

// Ai movement stuff.
ai_maintain_distance( get_player(),hover_dist,move_speed )

// Attack player.
shoot_timer[0] += dt
if( timer_is_done( shoot_timer ) )
{
	shoot_timer[0] = 0.0
	
	var player = get_player()
	var x_diff = player.x - x
	var y_diff = player.y - y
	// var angle = degtorad( point_direction( x,y,player.x,player.y ) )
	var angle = arctan2( y_diff,x_diff )
	
	angle -= shot_deviation
	var bullet = instance_create_layer( x,y,"instances",enemy_slime_bullet_obj )
	bullet.x_vel = cos( angle )
	bullet.y_vel = sin( angle )
	
	angle += shot_deviation * 2
	bullet = instance_create_layer( x,y,"instances",enemy_slime_bullet_obj )
	bullet.x_vel = cos( angle )
	bullet.y_vel = sin( angle )
	// var x_diff = player.x - x
	// var y_diff = player.y - y
	// var len = get_len( x_diff,y_diff )
	// bullet.x_vel = x_diff / len
	// bullet.y_vel = y_diff / len
}
