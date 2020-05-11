var dt = get_delta_time()

// Animation stuff.
anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_walk( anim_timer,0.97 )

// // Ai movement stuff.
// var player = get_player()
// ai_follow_target( player,move_speed )
// image_xscale = ( player.x < x ) ? -abs( image_xscale ) : abs( image_xscale )
// 
// // Attack player.
// shoot_timer[0] += dt
// if( timer_is_done( shoot_timer ) )
// {
// 	shoot_timer[0] = 0.0
// 	
// 	bullet_shotgun( x,y,enemy_snake_bullet_obj,
// 		get_target_angle( x,y,player.x,player.y ),
// 		random_range( 2,5 ),shot_dev,0.0 )
// }
// 
// circle_timer[0] += dt
// if( timer_is_done( circle_timer ) )
// {
// 	circle_timer[0] = 0.0
// 	bullet_circle( x,y,enemy_snake_bullet_obj,5,0.0 )
// }