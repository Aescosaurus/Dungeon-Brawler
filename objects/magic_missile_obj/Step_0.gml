var dt = get_delta_time()

x += x_vel * fly_speed * dt
y += y_vel * fly_speed * dt

if( x + size < 0 || x - size > room_width ||
	y + size < 0 || y - size > room_height )
{
	instance_destroy()
}