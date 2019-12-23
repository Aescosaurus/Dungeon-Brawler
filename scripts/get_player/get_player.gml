var dist = 9999.0
var closest = instance_find( player_base_obj,0 )
for( var i = 1; i < instance_number( player_base_obj ); ++i )
{
	var player = instance_find( player_base_obj,i )
	var cur_dist = get_len_sq( player.x - x,player.y - y )
	if( cur_dist < dist )
	{
		dist = cur_dist
		closest = player
	}
}

return( closest )