move_speed = 35.3
attack_timer = timer_create( 0.6 )
attacking = false
anim_timer = timer_create( 0.3 )

if( variable_global_exists( "player3" ) && !global.player3 )
{
	instance_destroy( id,false )
}