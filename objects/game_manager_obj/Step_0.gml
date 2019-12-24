if( done_loading && instance_number( enemy_base_obj ) < 1 )
{
	++cur_floor
	done_loading = false
	level_generate()
}