var my_x = argument0
var my_y = argument1
var target_x = argument2
var target_y = argument3

var x_diff = target_x - my_x
var y_diff = target_y - my_y

return( arctan2( y_diff,x_diff ) )