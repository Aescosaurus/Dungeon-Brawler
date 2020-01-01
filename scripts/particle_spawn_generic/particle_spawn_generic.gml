var x_pos = argument0
var y_pos = argument1
var sprite = argument2
var n_particles = argument3

var x_dev = sprite_width / 2
var y_dev = sprite_height / 2

for( var i = 0; i < n_particles; ++i )
{
	var temp_x = x_pos + random_range( -x_dev,x_dev )
	var temp_y = y_pos + random_range( -y_dev,y_dev )
	var x_vel = temp_x - x
	var y_vel = temp_y - y
	var len = get_len( x_vel,y_vel )
	if( len > 0.0 )
	{
		x_vel /= len
		y_vel /= len
	}
	
	particle_create( temp_x,temp_y,
		sprite,
		x_vel,y_vel )
}