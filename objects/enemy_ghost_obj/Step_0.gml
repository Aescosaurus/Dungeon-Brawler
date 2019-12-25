var dt = get_delta_time()

// Movement stuff.
var player = get_player()
if( ai_maintain_distance( player,follow_dist,move_speed ) )
{
	// Animation stuff.
	anim_timer[0] += dt
	if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
	anim_walk( anim_timer,1.0 )
}

// Attack player.
shoot_timer[0] += dt
if( timer_is_done( shoot_timer ) )
{
	shoot_timer[0] = 0.0
	
	var angle = 0.0
	
	// for( var i = -1; i < 2; ++i )
	// {
	// 	var bullet = instance_create_layer( x,y,"instances",enemy_slime_bullet_obj )
	// 	bullet.x_vel = cos( angle + shot_deviation * i )
	// 	bullet.y_vel = sin( angle + shot_deviation * i )
	// }
	for( var i = 0; i <= 8; ++i )
	{
		var bullet = instance_create_layer( x,y,"instances",enemy_slime_bullet_obj )
		bullet.x_vel = cos( angle )
		bullet.y_vel = sin( angle )
		angle = ( i / 8 ) * ( pi * 2.0 )
	}
}
