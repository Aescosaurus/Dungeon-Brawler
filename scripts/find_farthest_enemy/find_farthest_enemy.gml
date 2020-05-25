var dist = 0.0
var farthest = instance_find( enemy_base_obj,0 )
for( var i = 0; i < instance_number( enemy_base_obj ); ++i )
{
	var enemy = instance_find( enemy_base_obj,i )
	var cur_dist = get_len_sq( enemy.x - x,enemy.y - y )
	if( cur_dist > dist )
	{
		dist = cur_dist
		farthest = enemy
	}
}

return( farthest )