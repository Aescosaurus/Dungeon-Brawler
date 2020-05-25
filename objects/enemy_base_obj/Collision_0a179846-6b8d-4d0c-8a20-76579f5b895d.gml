hp -= other.damage
// instance_destroy( other )
cam_shake( other.damage / 5.0 )

if( hp <= 0 )
{
	cam_shake( other.damage * 2 )
	cam_zoom( 0.9 )
	
	audio_play_sound( enemy_oof_aud,1,false )
	
	instance_destroy()
}
else
{
	audio_play_sound( enemy_ouch_aud,1,false )
}