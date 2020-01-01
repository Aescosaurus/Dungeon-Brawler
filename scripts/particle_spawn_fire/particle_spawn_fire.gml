var x_pos = argument0
var y_pos = argument1
var sprite = argument2
var n_particles = argument3

var x_dev = 2
var y_dev = 2

for( var i = 0; i < n_particles; ++i )
{
	var temp_x = x_pos + random_range( -x_dev,x_dev )
	var temp_y = y_pos + random_range( -y_dev,y_dev )
	
	particle_create( temp_x,temp_y,
		sprite,
		random_range( -0.2,0.2 ),random_range( -0.6,-1.6 ) )
}