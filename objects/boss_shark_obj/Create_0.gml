hp = 19
particle_spr = enemy_snake_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 27.4
x_vel = 0.0
y_vel = 0.0
retarget_timer = timer_create( 0.6 )
target_player = false