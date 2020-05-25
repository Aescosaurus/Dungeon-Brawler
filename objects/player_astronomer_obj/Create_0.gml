move_speed = 43.2
attack_timer = timer_create( 2.1 )
attacking = false
anim_timer = timer_create( 0.3 )

maxHp = 2
hp = maxHp
regen = 0.1

ai_enabled = false
if( variable_global_exists( "player3" ) && !global.player3 )
{
	ai_enabled = true
}
else spawn_player_arrow()

retarget_timer = timer_create( 1.5 )
retarget_timer[0] += retarget_timer[1]
x_move = 0.0
y_move = 0.0