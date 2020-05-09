hp -= other.damage
// instance_destroy( other )
cam_shake( other.damage )

if( hp <= 0 )
{
	cam_shake( other.damage * 2 )
	cam_zoom( 0.9 )
	instance_destroy()
}