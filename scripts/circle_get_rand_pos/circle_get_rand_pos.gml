var circle = argument0

var rand_x_move = random_range( -1.0,1.0 )
var rand_y_move = random_range( -1.0,1.0 )
var len = get_len( rand_x_move,rand_y_move )
rand_x_move = round( rand_x_move / len * ( circle[2] - 1 ) )
rand_y_move = round( rand_y_move / len * ( circle[2] - 1 ) )

return( vec2_create( circle[0] + rand_x_move,circle[1] + rand_y_move ) )