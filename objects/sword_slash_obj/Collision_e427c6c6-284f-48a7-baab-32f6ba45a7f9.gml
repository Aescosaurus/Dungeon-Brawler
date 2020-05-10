particle_spawn_generic( x,y,enemy_snake_particle_spr,random_range( 4,7 ) )

var player = instance_find( player_slugknight_obj,0 )
if( player != noone )
{
	// player_slugknight_obj.x -= x_vel * knockback_amount
	// player_slugknight_obj.y -= y_vel * knockback_amount
	handle_other_collision( -x_vel * knockback_amount,
		-y_vel * knockback_amount,player_slugknight_obj )
}

instance_destroy()