move_speed = 35.3
attack_timer = timer_create( 0.6 )
attacking = false
anim_timer = timer_create( 0.3 )

maxHp = 5
hp = maxHp
regen = 0.4

ai_enabled = false
if( variable_global_exists( "player2" ) && !global.player2 )
{
	ai_enabled = true
}
else spawn_player_arrow()

target_enemy = noone
ideal_dist = 5
angled_shot_thresh = 25