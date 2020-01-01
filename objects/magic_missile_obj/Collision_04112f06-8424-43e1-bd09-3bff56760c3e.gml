// spawn_particles( x,y,enemy_slime_particle_spr,random_range( 3,5 ) )
particle_spawn_generic( x,y,enemy_slime_particle_spr,random_range( 3,5 ) )

if( player_mage_obj != noone )
{
	player_mage_obj.x -= x_vel * knockback_amount
	player_mage_obj.y -= y_vel * knockback_amount
}

instance_destroy()