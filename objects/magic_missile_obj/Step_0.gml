var dt = get_delta_time()

x += x_vel * fly_speed * dt
y += y_vel * fly_speed * dt

if( timer_update( target_timer ) )
{
	timer_reset( target_timer )
	
	var dist = sqr( min_target_dist )
	var closest = noone
	for( var i = 0; i < instance_number( enemy_base_obj ); ++i )
	{
		var enemy = instance_find( enemy_base_obj,i )
		var len_sq = get_len_sq( enemy.x - x,enemy.y - y )
		if( len_sq < dist )
		{
			dist = len_sq
			closest = enemy
		}
	}
	
	if( closest != noone )
	{
		var x_diff = closest.x - x
		var y_diff = closest.y - y
		var len = get_len( x_diff,y_diff )
		x_vel = x_diff / len
		y_vel = y_diff / len
		image_angle = radtodeg( -arctan2( y_vel,x_vel ) + pi + pi / 4.0 )
	}
}

if( x + size < 0 || x - size > room_width ||
	y + size < 0 || y - size > room_height )
{
	instance_destroy()
}