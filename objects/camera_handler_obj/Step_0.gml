// view_xport[0] = random_range( -x_shake,x_shake )
// view_yport[0] = random_range( -y_shake,y_shake )

// view_wport[0] = w_start * zoom
// view_hport[0] = h_start * zoom
// camera_set_view_size( view_camera[0],480,270 )
camera_set_view_size( view_camera[0],w_start * zoom,h_start * zoom )

// view_xport[0] += w_start * ( 1.0 - zoom )
// view_yport[0] += h_start * ( 1.0 - zoom )
camera_set_view_pos( view_camera[0],
	w_start * ( 1.0 - zoom ) / 2.0 + random_range( -x_shake,x_shake ),
	h_start * ( 1.0 - zoom ) / 2.0 + random_range( -y_shake,y_shake ) )

x_shake *= shake_decay
y_shake *= shake_decay

zoom /= zoom_decay
if( zoom > 1.0 ) zoom = 1.0