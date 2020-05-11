hp = 15
particle_spr = enemy_slime_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )

shot_count = 2
shot_spread = pi
shot_timer = timer_create( 0.4 )
shot_angle = 0.0
shot_rot_speed = pi / 8.0