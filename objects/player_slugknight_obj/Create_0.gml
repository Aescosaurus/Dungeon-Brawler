move_speed = 35.3
attack_timer = timer_create( 0.6 )
attacking = false
anim_timer = timer_create( 0.3 )

maxHp = 5
hp = maxHp
regen = 0.4

if( variable_global_exists( "player2" ) && !global.player2 )
{
	instance_destroy( id,false )
}