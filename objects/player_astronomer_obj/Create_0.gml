move_speed = 43.2
attack_timer = timer_create( 2.1 )
attacking = false
anim_timer = timer_create( 0.3 )

maxHp = 2
hp = maxHp
regen = 0.1

if( variable_global_exists( "player3" ) && !global.player3 )
{
	instance_destroy( id,false )
}