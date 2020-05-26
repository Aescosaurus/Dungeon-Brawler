camera_set_view_size( view_camera[0],w_start * zoom,h_start * zoom )

camera_set_view_pos( view_camera[0],
	w_start * ( 1.0 - zoom ) / 2.0 + random_range( -x_shake,x_shake ) / 2,
	h_start * ( 1.0 - zoom ) / 2.0 + random_range( -y_shake,y_shake ) / 2 )

x_shake *= shake_decay
y_shake *= shake_decay

if( x_shake < 5.0 ) x_shake *= shake_decay
if( y_shake < 5.0 ) y_shake *= shake_decay

zoom /= zoom_decay
if( zoom > 1.0 ) zoom = 1.0