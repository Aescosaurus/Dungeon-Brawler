particle_spawn_gibs( x,y,enemy_snake_particle_spr,random_range( 40,60 ) )

cam_shake( 7.0 )
cam_zoom( 0.8 )

if( instance_number( player_base_obj ) < 2 )
{
	room_goto( game_over_room )
}

instance_destroy()