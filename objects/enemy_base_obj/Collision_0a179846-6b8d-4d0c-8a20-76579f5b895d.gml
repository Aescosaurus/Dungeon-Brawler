hp -= other.damage
// instance_destroy( other )
shake_screen( other.damage )

if( hp <= 0 )
{
	shake_screen( other.damage * 2 )
	instance_destroy()
}