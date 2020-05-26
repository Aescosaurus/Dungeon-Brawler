// var gm = instance_find( game_manager_obj,0 )
// var music = instance_find( music_player_obj,0 )
// 
// if( gm.cur_level > 0 &&
// 	gm.cur_level % 7 == 0 )
// {
// 	audio_stop_all()
// 	
// 	with( music )
// 	{
// 		if( room == desert_room )
// 		{
// 			if( song == desert_mus ) song = ambient_desert_mus
// 			else song = desert_mus
// 		}
// 		else if( room == sea_room )
// 		{
// 			if( song == sea_mus ) song = ambient_sea_mus
// 			else song = sea_mus
// 		}
// 		else if( room == volcano_room )
// 		{
// 			if( song == volcano_mus ) song = ambient_volcano_mus
// 			else song = volcano_mus
// 		}
// 		
// 		audio_play_sound( song,1,true )
// 	}
// }