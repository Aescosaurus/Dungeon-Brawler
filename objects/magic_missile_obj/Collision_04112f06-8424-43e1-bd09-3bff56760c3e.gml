// spawn_particles( x,y,enemy_slime_particle_spr,random_range( 3,5 ) )
particle_spawn_generic( x,y,enemy_slime_particle_spr,random_range( 3,5 ) )

var player = instance_find( player_mage_obj,0 )
if( player != noone )
{
	// player_mage_obj.x -= x_vel * knockback_amount
	// player_mage_obj.y -= y_vel * knockback_amount
	handle_other_collision( -x_vel * knockback_amount,
		-y_vel * knockback_amount,player_mage_obj )
}

instance_destroy()