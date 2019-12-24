hp = 4
anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 15.4
hover_dist = 86.4
shoot_timer = timer_create( 4.3 )
shoot_timer[0] += random_range( 0.0,shoot_timer[1] )
shot_deviation = pi / 12.0