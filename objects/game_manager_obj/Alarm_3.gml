instance_destroy( player_bullet_base_obj,false )
instance_destroy( enemy_bullet_base_obj,false )
instance_destroy( particle_obj,false )
instance_destroy( enemy_base_obj,false ) // Just in case.

alarm_set( 2,0.0 )

// if( ++cur_level > max_level_count )
// {
// 	cur_level = 0
// 	++cur_floor
// 	
// }
// else
{
	done_loading = false
	level_generate()
	cur_level += 1
}