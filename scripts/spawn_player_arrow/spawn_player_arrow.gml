if( room != menu_room )
{
	var arrow = instance_create_layer( x,y - 12,"particles",player_select_arrow_obj )
	arrow.target_player = self
}