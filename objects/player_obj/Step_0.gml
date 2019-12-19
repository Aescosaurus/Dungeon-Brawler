var dt = delta_time_scr()

var x_vel = 0.0
var y_vel = 0.0
if( keyboard_check( ord( "W" ) ) ) --y_vel
if( keyboard_check( ord( "S" ) ) ) ++y_vel
if( keyboard_check( ord( "A" ) ) ) --x_vel
if( keyboard_check( ord( "D" ) ) ) ++x_vel

var len = len_scr( x_vel,y_vel )

if( len > 0.0 )
{
	x += ( x_vel / len ) * move_speed * dt
	y += ( y_vel / len ) * move_speed * dt
}