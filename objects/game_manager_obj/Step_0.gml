if( ( done_loading && instance_number( enemy_base_obj ) < 1 ) ||
	keyboard_check_pressed( vk_space ) )
{
	instance_destroy( player_bullet_base_obj )
	instance_destroy( enemy_bullet_base_obj )
	instance_destroy( particle_obj )
	instance_destroy( enemy_base_obj ) // Just in case.
	
	if( ++cur_level ) {}
	done_loading = false
	level_generate()
}