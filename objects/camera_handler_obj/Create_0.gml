x_start = view_xport[0]
y_start = view_yport[0]
w_start = camera_get_view_width( view_camera[0] )
h_start = camera_get_view_height( view_camera[0] )

x_shake = 0.0
y_shake = 0.0
shake_decay = 0.9

zoom = 1.0
zoom_decay = 0.98