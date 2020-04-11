move_speed = 18.2
attack_timer = timer_create( 2.6 )
attacking = false
anim_timer = timer_create( 0.3 )

if( variable_global_exists( "player3" ) && !global.player3 )
{
	instance_destroy( id,false )
}