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
	
	// var x_diff = player.x - x
	// var y_diff = player.y - y
	// var angle = arctan2( y_diff,x_diff )
	// 
	// angle -= shot_deviation
	// var bullet = instance_create_layer( x,y,"instances",enemy_snake_bullet_obj )
	// bullet.x_vel = cos( angle )
	// bullet.y_vel = sin( angle )
	// 
	// angle += shot_deviation * 2
	// bullet = instance_create_layer( x,y,"instances",enemy_snake_bullet_obj )
	// bullet.x_vel = cos( angle )
	// bullet.y_vel = sin( angle )
	
	bullet_shotgun( x,y,enemy_snake_bullet_obj,
		get_target_angle( x,y,player.x,player.y ),
		2,shot_deviation,0.0 )
}
