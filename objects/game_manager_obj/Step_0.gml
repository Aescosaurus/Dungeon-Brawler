if( ( done_loading && instance_number( enemy_base_obj ) < 1 )/* ||
	keyboard_check_pressed( vk_space ) */ )
{
	instance_destroy( enemy_bullet_base_obj,false )
	
	alarm_set( 2,1 )
	
	alarm_set( 3,2.5 * 60.0 )
	done_loading = false
}