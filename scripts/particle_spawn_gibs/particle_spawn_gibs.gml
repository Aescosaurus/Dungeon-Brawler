var x_pos = argument0
var y_pos = argument1
var sprite = argument2
var n_particles = argument3

var x_dev = sprite_width / 8
var y_dev = sprite_height / 8
// var floor_pos = x + sprite_width / 4

for( var i = 0; i < n_particles; ++i )
{
	var temp_x = x_pos + random_range( -x_dev,x_dev )
	var temp_y = y_pos + random_range( -y_dev,y_dev )
	
	var particle = particle_create( temp_x,temp_y,
		sprite,
		random_range( -0.6,0.6 ),random_range( -1.1,-0.6 ) )
	
	particle.grav_accel = random_range( 2.7,4.1 )
	particle.lifetimer = timer_create( random_range( 0.7,1.8 ) )
}