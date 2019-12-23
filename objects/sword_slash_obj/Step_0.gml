var dt = get_delta_time()

x += x_vel * fly_speed * dt
y += y_vel * fly_speed * dt

lifetimer[0] += dt
if( tilemap_get_at_pixel( tilemap,x,y ) > 1 ||
	timer_is_done( lifetimer ) )
{
	instance_destroy()
}