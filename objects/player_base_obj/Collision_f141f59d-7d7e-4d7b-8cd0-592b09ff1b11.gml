cam_shake( 3.0 )
cam_zoom( 0.95 )
particle_spawn_gibs( x,y,enemy_snake_particle_spr,random_range( 10,20 ) )

if( --hp < 1 )
{
	audio_play_sound( player_oof_aud,1,false )
	
	cam_shake( 7.0 )
	cam_zoom( 0.8 )
	particle_spawn_gibs( x,y,enemy_snake_particle_spr,random_range( 40,60 ) )
	
	instance_create_layer( x,y,"instances",enemy_explode_ghost_obj )
	
	if( instance_number( player_base_obj ) < 2 )
	{
		global.player1 = true
		global.player2 = true
		global.player3 = true
		instance_destroy( game_manager_obj )
		room_goto( menu_room )
		// room_goto( game_over_room )
	}
	
	instance_destroy()
}
else
{
	audio_play_sound( player_ouch_aud,1,false )
}