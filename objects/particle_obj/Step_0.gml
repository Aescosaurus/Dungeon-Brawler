var dt = get_delta_time()

x += x_vel * dt
y += y_vel * dt

lifetimer[0] += dt
if( timer_is_done( lifetimer ) )
{
	instance_destroy()
}