particle_spawn_gibs( x,y,enemy_snake_particle_spr,random_range( 1,4 ) )
explode_timer[0] += get_delta_time()
if( timer_is_done( explode_timer ) )
{
	instance_destroy()
}