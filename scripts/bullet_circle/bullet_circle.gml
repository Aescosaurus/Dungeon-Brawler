var bx = argument0
var by = argument1
var bullet_type = argument2
var count = argument3
var dev = argument4

var angle = 0.0
var spread = pi * 2.0 / count

for( var i = -count / 2; i < count / 2; ++i )
{
	bullet_single( bx,by,bullet_type,
		angle + i * spread,dev )
}

audio_play_sound( enemy_shoot_aud,1,false )