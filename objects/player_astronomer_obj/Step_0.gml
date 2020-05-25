var dt = get_delta_time()

var x_vel = mouse_x - x
var y_vel = mouse_y - y
if( mouse_check_button( mb_left ) && !ai_enabled )
{
	var len = get_len( x_vel,y_vel )
	x_vel = x_vel / len * move_speed * dt
	y_vel = y_vel / len * move_speed * dt
	
	handle_block_collision( x_vel,y_vel )
	
	if( x_vel > 0.0 ) image_xscale = 1.0
	else if( x_vel < 0.0 ) image_xscale = -1.0
}
else if( ai_enabled )
{
	retarget_timer[0] += dt
	if( timer_is_done( retarget_timer ) )
	{
		retarget_timer[0] = 0.0
		
		var rand_x = random_range( 20,room_width - 20 )
		var rand_y = random_range( 20,room_height - 20 )
		
		x_move = rand_x - x
		y_move = rand_y - y
		var len = get_len( x_move,y_move )
		if( len != 0.0 )
		{
			x_move = x_move / len * move_speed
			y_move = y_move / len * move_speed
		}
	}
	
	if( handle_block_collision( x_move * dt,y_move * dt ) )
	{
		retarget_timer[0] += retarget_timer[1]
	}
}

// Handle shooting magic missiles.
attack_timer[0] += dt
if( timer_is_done( attack_timer ) &&
	( mouse_check_button( mb_left ) || ( ai_enabled && random_range( 0,100 ) < 10 ) ) )
{
	attack_timer[0] = 0.0
	attacking = true
	
	var bullet = instance_create_layer( x,y,"instances",meteor_obj )
	if( !ai_enabled )
	{
		bullet.x = mouse_x
		bullet.y = mouse_y - 32
		bullet.target_y = mouse_y
	}
	else
	{
		var enemy = find_farthest_enemy()
		
		if( instance_exists( enemy ) )
		{
			bullet.x = enemy.x
			bullet.y = enemy.y - 32
			bullet.target_y = enemy.y
		}
	}
	
	audio_play_sound( player_3_shoot_aud,1,false )
	cam_shake( 1.5 )
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