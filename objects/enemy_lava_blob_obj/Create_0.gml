hp = 7
particle_spr = enemy_sea_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 26.1
shoot_mode = false
circle_offset = 45.0
shot_count = 4
cur_shot = 0
shot_timer = timer_create( 0.4 )
move_timer = timer_create_random( 1.5 )