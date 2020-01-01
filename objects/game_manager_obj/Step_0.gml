if( ( done_loading && instance_number( enemy_base_obj ) < 1 ) ||
	keyboard_check_pressed( vk_space ) )
{
	instance_destroy( player_bullet_base_obj,false )
	instance_destroy( enemy_bullet_base_obj,false )
	instance_destroy( particle_obj,false )
	instance_destroy( enemy_base_obj,false ) // Just in case.
	
	if( ++cur_level > max_level_count )
	{
		cur_level = 0
		++cur_floor
		
	}
	else
	{
		done_loading = false
		level_generate()
	}
}