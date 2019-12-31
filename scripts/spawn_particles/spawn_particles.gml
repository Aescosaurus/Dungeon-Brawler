var x_pos = argument0
var y_pos = argument1
var sprite = argument2
var n_particles = argument3

var x_dev = sprite_width / 2
var y_dev = sprite_height / 2

for( var i = 0; i < n_particles; ++i )
{
	var particle = instance_create_layer(
		x_pos + random_range( -x_dev,x_dev ),
		y_pos + random_range( -y_dev,y_dev ),
		"instances",particle_obj )
	particle.sprite_index = sprite
	particle.image_index = random_range( 0,particle.image_number )
	
	var x_vel = particle.x - x
	var y_vel = particle.y - y
	var len = get_len( x_vel,y_vel )
	particle.x_vel = x_vel / len
	particle.y_vel = y_vel / len
}