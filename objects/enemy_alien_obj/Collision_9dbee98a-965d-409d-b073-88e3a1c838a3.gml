event_inherited()

shot_counter += 1
if( shot_counter >= shot_freq )
{
	shot_counter = 0
	
	for( var i = 0; i < instance_number( player_base_obj ); ++i )
	{
		var cur_player = instance_find( player_base_obj,i )
		
		bullet_single( x,y,enemy_alien_bullet_obj,
			get_target_angle( x,y,cur_player.x,cur_player.y ),pi / 24.0 )
	}
}