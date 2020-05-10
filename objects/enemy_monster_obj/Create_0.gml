hp = 6
particle_spr = enemy_sea_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 7.1
retarget_dist = 23
shot_timer = timer_create( 1.7 )
shot_count = 5
bullet_spread = pi * 2.0 / shot_count
target = noone
target_dist = 20.0
shot_angle = 0.0
shot_rot_speed = pi / 6.0