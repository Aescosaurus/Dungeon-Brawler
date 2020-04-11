var dt = get_delta_time()

// x += x_vel * fly_speed * dt
y += y_vel * fall_speed * dt

if( y > target_y )
{
	instance_destroy()
}