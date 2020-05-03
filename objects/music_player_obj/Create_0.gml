audio_stop_all()

var song = noone
if( room == menu_room )
{
	song = menu_mus
}
else if( room == desert_room )
{
	if( random_range( 0,100 ) < 50 ) song = desert_mus
	else song = ambient_desert_mus
}
else if( room == sea_room )
{
	if( random_range( 0,100 ) < 50 ) song = sea_mus
	else song = ambient_sea_mus
}
else if( room == volcano_room )
{
	if( random_range( 0,100 ) < 50 ) song = volcano_mus
	else song = ambient_volcano_mus
}

audio_play_sound( song,1,true )