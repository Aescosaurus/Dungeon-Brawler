var x_pos = argument0
var y_pos = argument1
var sprite = argument2
var n_particles = argument3

var deviation = 3

for( var i = 0; i < n_particles; ++i )
{
	var particle = instance_create_layer(
		x_pos + random_range( -deviation,deviation ),
		y_pos + random_range( -deviation,deviation ),
		"instances",particle_obj )
	particle.sprite_index = sprite
	particle.image_index = random_range( 0,particle.image_number )
}