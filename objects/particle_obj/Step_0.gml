var dt = get_delta_time()

x += x_vel * dt
y += y_vel * dt

if( timer_update( lifetimer ) )
{
	instance_destroy()
}