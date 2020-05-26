audio_stop_sound( menu_mus )

song = noone
if( room == menu_room )
{
	song = menu_mus
}
else if( room == desert_room )
{
	song = desert_mus
}
else if( room == sea_room )
{
	song = sea_mus
}
else if( room == volcano_room )
{
	song = volcano_mus
}

audio_play_sound( song,1,true )