var dt = get_delta_time()

x = x_start + sin( despawn_timer[0] * x_mod ) * x_amp
y += y_vel * dt

despawn_timer[0] += dt
if( timer_is_done( despawn_timer ) )
{
	instance_destroy()
}