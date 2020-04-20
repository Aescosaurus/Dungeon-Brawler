hp = 7
particle_spr = enemy_snake_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 26.1
retarget_timer = timer_create( 2.8 )
retarget_timer[0] += random_range( 0,retarget_timer[1] )
x_vel = 0.0
y_vel = 0.0
shot_timer = timer_create( 0.3 )
cur_shot = 0
barrage_size = 3