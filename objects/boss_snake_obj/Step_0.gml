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
	
	var x_diff = player.x - x
	var y_diff = player.y - y
	var angle = arctan2( y_diff,x_diff )
	var shot_count = 5
	
	angle -= shot_deviation * ( shot_count / 2 )
	for( var i = 0; i <= shot_count; ++i )
	{
		var bullet = instance_create_layer( x,y,"instances",enemy_snake_bullet_obj )
		bullet.x_vel = cos( angle )
		bullet.y_vel = sin( angle )
		angle += ( i / shot_count ) * ( pi * 2.0 )
	}
}

circle_timer[0] += dt
if( timer_is_done( circle_timer ) )
{
	circle_timer[0] = 0.0
	
	var angle = 0.0
	
	for( var i = 0; i <= 8; ++i )
	{
		var bullet = instance_create_layer( x,y,"instances",enemy_snake_bullet_obj )
		bullet.x_vel = cos( angle )
		bullet.y_vel = sin( angle )
		angle = ( i / 8 ) * ( pi * 2.0 )
	}
}