var dt = get_delta_time()

x += x_vel * move_speed * dt
y += y_vel * move_speed * dt

y_vel += grav_accel * dt

lifetimer[0] += dt
if( timer_is_done( lifetimer ) )
{
	instance_destroy()
}