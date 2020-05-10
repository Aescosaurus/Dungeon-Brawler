hp = 4
particle_spr = enemy_sea_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 12.1
shot_timer = timer_create( 3.4 )
shot_timer[0] += random_range( 0.0,shot_timer[1] )
retarget_timer = timer_create( 1.9 )
retarget_timer[0] += random_range( 0,retarget_timer[1] )
x_vel = random_range( -1.0,1.0 )
y_vel = random_range( -1.0,1.0 )