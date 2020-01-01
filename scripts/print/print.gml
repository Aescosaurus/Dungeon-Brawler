var message = ""

for( var i = 0; i < argument_count; ++i )
{
	message += string( argument[i] )
	if( i < argument_count - 1 ) message += ", "
}

show_debug_message( message )