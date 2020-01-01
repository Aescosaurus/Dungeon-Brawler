var x_pos = argument0
var y_pos = argument1
var sprite = argument2
var x_vel = argument3
var y_vel = argument4

var particle = instance_create_layer(
	x_pos,
	y_pos,
	"particles",particle_obj )

particle.sprite_index = sprite
particle.image_index = random_range( 0,particle.image_number )
particle.x_vel = x_vel
particle.y_vel = y_vel

return( particle )