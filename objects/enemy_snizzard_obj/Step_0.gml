var dt = get_delta_time()

// Animation stuff.
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.95 )

// Movement stuff.
var player = get_player()
if( tilemap_get_at_pixel( tilemap,x + x_vel,y + y_vel ) > 1 || x_vel == 0.0 )
{
	var x_diff = player.x - x
	var y_diff = player.y - y
	var len = get_len( x_diff,y_diff )
	x_vel = ( x_diff / len ) * move_speed
	y_vel = ( y_diff / len ) * move_speed
}
handle_block_collision( x_vel * dt,y_vel * dt )
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
	// for( var i = -1; i < 2; ++i )
	// {
	// 	var bullet = instance_create_layer( x,y,"instances",enemy_snake_bullet_obj )
	// 	bullet.x_vel = cos( angle + shot_deviation * i )
	// 	bullet.y_vel = sin( angle + shot_deviation * i )
	// }
	bullet_shotgun( x,y,enemy_snake_bullet_obj,
		get_target_angle( x,y,player.x,player.y ),
		3,shot_deviation,0.0 )
}
