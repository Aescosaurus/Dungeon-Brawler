var dt = get_delta_time()

// x += x_vel * fly_speed * dt
y += fall_speed * dt

if( y > target_y )
{
	// particle_spawn_gibs( x,y,enemy_snake_particle_spr,random_range( 3,5 ) )
	instance_create_layer( x,y,"instances",meteor_damager_obj )
	audio_play_sound( player_3_shoot_2_aud,1,false )
	cam_shake( 1.4 )
	instance_destroy()
}