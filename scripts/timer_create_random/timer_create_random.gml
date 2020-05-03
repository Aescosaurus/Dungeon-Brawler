var duration = argument0

var timer = timer_create( duration )
timer[0] += random_range( 0,timer[1] )
return( timer )