if( instance_exists( target_player ) )
{
	x = target_player.x
	y = target_player.y - 12
}

hide_timer[0] += get_delta_time()
if( timer_is_done( hide_timer ) )
{
	hide_timer[0] = 0.0
	hidden = !hidden
	if( --oof_counter < 1 )
	{
		instance_destroy()
	}
}