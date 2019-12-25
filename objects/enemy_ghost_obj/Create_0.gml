hp = 5
anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 21.1
follow_dist = 6.3
shoot_timer = timer_create( 2.9 )
shoot_timer[0] += random_range( 0.0,shoot_timer[1] )