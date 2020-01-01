fly_speed = 94.0
x_vel = 0.0
y_vel = 0.0
target_timer = timer_create( 0.4 )
min_target_dist = 31
size = sprite_get_width( sprite_index ) * 2
tilemap = layer_tilemap_get_id( "tilemap" )
knockback_amount = 2.0