var bx = argument0
var by = argument1
var bullet_type = argument2
var angle = argument3
var count = argument4
var spread = argument5
var dev = argument6

for( var i = -count / 2; i < count / 2; ++i )
{
	bullet_single( bx,by,bullet_type,
		angle + i * spread,dev )
}

audio_stop_sound( enemy_shoot_aud )
audio_play_sound( enemy_shoot_aud,1,false )