var bx = argument0
var by = argument1
var bullet_type = argument2
var angle = argument3
var dev = argument4

var rng_angle = angle + random_range( -dev,dev )

var bullet = instance_create_layer( bx,by,"instances",bullet_type )
bullet.x_vel = cos( rng_angle )
bullet.y_vel = sin( rng_angle )
return( bullet )