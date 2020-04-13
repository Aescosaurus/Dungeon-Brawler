var dt = get_delta_time()

x += x_vel * fly_speed * dt
y += y_vel * fly_speed * dt

image_angle = point_direction( 0,0,x_vel,y_vel )

if( tilemap_get_at_pixel( tilemap,x,y ) > 1 )
{
	instance_destroy()
}