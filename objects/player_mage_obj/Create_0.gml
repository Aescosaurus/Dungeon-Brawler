move_speed = 21.0
shoot_timer = timer_create( 0.3 )
anim_timer = timer_create( 0.26 )
attacking = false

maxHp = 3
hp = maxHp
regen = 0.2

ai_enabled = false
if( variable_global_exists( "player1" ) && !global.player1 )
{
	ai_enabled = true
}
else spawn_player_arrow()

too_close_dist = 50
target_enemy = noone
angled_shot_thresh = 20

old_x = 0
old_y = 0
repo_thresh = 0.4
reposition_timer = timer_create( 1.0 )
repo_move_timer = timer_create( 1.0 )
repo_x_move = 0.0
repo_y_move = 0.0