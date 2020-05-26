var dt = get_delta_time()
var vels = array_create( 2 )
if( !ai_enabled )
{
	vels = handle_player_movement( vk_up,vk_down,vk_left,vk_right,move_speed )
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
		
		if( len > 0.0 )
		{
			handle_block_collision( vels[0] / len * move_speed * dt,
				vels[1] / len * move_speed * dt )
		}
		
		if( get_len_sq( target_enemy.x - x,target_enemy.y - y ) < too_close_dist * too_close_dist )
		{
			target_enemy = find_farthest_enemy()
		}
	}
	else
	{
		target_enemy = find_closest_enemy()
	}
	
	if( abs( old_x - x ) < repo_thresh && abs( old_y - y ) < repo_thresh )
	{
		reposition_timer[0] += dt
		if( timer_is_done( reposition_timer ) )
		{
			repo_move_timer[0] += dt
			
			if( repo_x_move != 0.0 && repo_y_move != 0.0 )
			{
				handle_block_collision( repo_x_move * move_speed * dt,
					repo_y_move * move_speed * dt )
			}
			else
			{
				repo_x_move = random_range( -1.0,1.0 )
				repo_y_move = random_range( -1.0,1.0 )
				var len = get_len( repo_x_move,repo_y_move )
				if( len != 0.0 )
				{
					repo_x_move /= len
					repo_y_move /= len
				}
			}
			
			if( timer_is_done( repo_move_timer ) )
			{
				reposition_timer[0] = 0.0
				repo_move_timer[0] = 0.0
			}
		}
	}
	else
	{
		reposition_timer[0] = 0.0
	}
	
	old_x = x
	old_y = y
}
var x_vel = vels[0]
var y_vel = vels[1]

shoot_timer[0] += dt

// Handle shooting magic missiles.
if( timer_is_done( shoot_timer ) && ( x_vel != 0.0 || y_vel != 0.0 ) )
{
	shoot_timer[0] = 0.0
	attacking = true
	
	var bullet = instance_create_layer( x,y,"instances",magic_missile_obj )
	var len = get_len( x_vel,y_vel )
	bullet.x_vel = x_vel / len
	bullet.y_vel = y_vel / len
	bullet.image_angle = radtodeg( -arctan2( y_vel,x_vel ) + pi + pi / 4.0 )
	
	// shake_screen( 0.5 )
	audio_play_sound( player_1_shoot_aud,1,false )
}

if( attacking )
{
	anim_timer[0] += dt
	anim_attack( anim_timer,0.2,1.4 )
	if( timer_is_done( anim_timer ) )
	{
		anim_timer[0] = 0.0
		attacking = false
		image_xscale /= abs( image_xscale )
		image_yscale /= abs( image_yscale )
	}
}