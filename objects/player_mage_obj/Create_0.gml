move_speed = 21.0
shoot_timer = timer_create( 0.3 )
anim_timer = timer_create( 0.26 )
attacking = false

maxHp = 3
hp = maxHp
regen = 0.2

if( variable_global_exists( "player1" ) && !global.player1 )
{
	instance_destroy( id,false )
}