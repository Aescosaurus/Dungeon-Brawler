var rect = argument0

var rand_x = irandom_range( rect[0] + 1,rect[1] - 1 )
var rand_y = irandom_range( rect[2] + 1,rect[3] - 1 )

return( vec2_create( rand_x,rand_y ) )