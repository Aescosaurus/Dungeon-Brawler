var buffer = 32
var fireworks = array_create( 3 )
fireworks[0] = firework_1_particle_spr
fireworks[1] = firework_2_particle_spr
fireworks[2] = firework_3_particle_spr

for( var i = 0; i < random_range( 3,5 ); ++i )
{
	particle_spawn_fireworks(
		random_range( buffer,room_width - buffer ),
		random_range( buffer,room_height - buffer ),
		fireworks[random_range( 0,array_length_1d( fireworks ) )],
		random_range( 15,23 ) )
}

audio_play_sound( level_complete_aud,1,false )

alarm_set( 2,0.55 * 60.0 )