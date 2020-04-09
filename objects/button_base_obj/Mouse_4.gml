for( var i = 0; i < instance_number( button_base_obj ); ++i )
{
	var button = instance_find( button_base_obj,i )
	if( button.y == y ) button.selected = false
}
selected = true