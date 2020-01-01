hp = 5
particle_spr = enemy_snake_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 15.4
shoot_timer = timer_create( 5.1 )
shoot_timer[0] += random_range( 0.0,shoot_timer[1] )
shot_deviation = pi / 12.0
x_vel = 0.0
y_vel = 0.0
tilemap = layer_tilemap_get_id( "tilemap" )