hp = 5
particle_spr = enemy_sea_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 13.1
target_player = noone
retarget_dist = 23
shot_timer = timer_create( 4.0 )
shot_count = 4
bullet_spread = pi / 2 / shot_count