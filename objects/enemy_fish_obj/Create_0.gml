hp = 2
particle_spr = enemy_sea_particle_spr

anim_timer = timer_create( 1.0 )
anim_timer[0] += random_range( 0.0,1.0 )
move_speed = 26.1
shot_timer = timer_create( 2.6 )
shot_timer[0] += random_range( 0.0,shot_timer[1] )
retarget_timer = timer_create( 0.8 )
retarget_timer[0] += random_range( 0,retarget_timer[1] )
x_vel = random_range( -1.0,1.0 )
y_vel = random_range( -1.0,1.0 )

if( random_range( 0,100 ) < 50 && instance_number( enemy_fish_obj ) < 5 )
{
	instance_create_layer( x,y,"instances",enemy_fish_obj )
}