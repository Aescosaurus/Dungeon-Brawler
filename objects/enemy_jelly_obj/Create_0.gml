hp = 3
particle_spr = enemy_sea_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 11.1
bullet_spread = pi / 12.0
retarget_timer = timer_create( 3.4 )
retarget_timer[0] += random_range( 0.0,retarget_timer[1] )
player = noone
follow_dist = 30