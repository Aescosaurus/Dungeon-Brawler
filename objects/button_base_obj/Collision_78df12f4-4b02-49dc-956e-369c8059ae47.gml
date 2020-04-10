for( var i = 0; i < instance_number( button_base_obj ); ++i )
{
	var button = instance_find( button_base_obj,i )
	if( button != self ) button.progress = 0.0
}

particle_spawn_fire( other.x,other.y,firework_1_particle_spr,progress )
particle_spawn_fire( x,y,firework_1_particle_spr,progress )

progress += get_delta_time()

if( progress > 3.0 )
{
	global.player1 = player1
	global.player2 = player2
	global.player3 = player3
	room_goto( my_room )
}