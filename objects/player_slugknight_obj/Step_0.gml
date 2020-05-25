var dt = get_delta_time()
var vels = array_create( 2 )
if( !ai_enabled )
{
	vels = handle_player_movement( ord( "W" ),ord( "S" ),ord( "A" ),ord( "D" ),move_speed )
}
else
{
	if( instance_exists( target_enemy ) )
	{
		vels[0] = target_enemy.x - x
		vels[1] = target_enemy.y - y
		
		if( abs( vels[0] ) < angled_shot_thresh ) vels[0] = 0.0
		if( abs( vels[1] ) < angled_shot_thresh ) vels[1] = 0.0
		
		if( vels[0] != 0.0 ) vels[0] /= abs( vels[0] )
		if( vels[1] != 0.0 ) vels[1] /= abs( vels[1] )
		
		var len = get_len( vels[0],vels[1] )
		if( len != 0.0 )
		{
			if( get_len_sq( target_enemy.x - x,target_enemy.y - y ) < ideal_dist * ideal_dist )
			{
				vels[0] *= -1.0
				vels[1] *= -1.0
			}
			handle_block_collision( vels[0] / len * move_speed * dt,
				vels[1] / len * move_speed * dt )
		}
		
		vels[0] = target_enemy.x - x
		vels[1] = target_enemy.y - y
	}
	else
	{
		target_enemy = find_closest_enemy()
	}
}
var x_vel = vels[0]
var y_vel = vels[1]
var len = get_len( x_vel,y_vel )

// Handle shooting magic missiles.
attack_timer[0] += dt
if( timer_is_done( attack_timer ) && len > 0.0 )
{
	attack_timer[0] = 0.0
	attacking = true
	
	for( var i = 0; i < 2; ++i )
	{
		var bullet = instance_create_layer( x,y,"instances",sword_slash_obj )
		bullet.x_vel = x_vel / len
		bullet.y_vel = y_vel / len
		bullet.image_angle = radtodeg( -arctan2( y_vel,x_vel ) - pi / 2.5 + i * ( pi / 8.0 ) )
	}
	
	audio_play_sound( player_2_shoot_aud,1,false )
	// shake_screen( 1.0 )
}

if( attacking )
{
	anim_timer[0] += dt
	anim_attack( anim_timer,0.35,1.4 )
	if( timer_is_done( anim_timer ) )
	{
		anim_timer[0] = 0.0
		attacking = false
		image_xscale /= abs( image_xscale )
		image_yscale /= abs( image_yscale )
	}
}