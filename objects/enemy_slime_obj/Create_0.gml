hp = 3
anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 12.4
hover_dist = 70.0
shoot_timer = timer_create( 7.5 )
shoot_timer[0] += random_range( 0.0,shoot_timer[1] )