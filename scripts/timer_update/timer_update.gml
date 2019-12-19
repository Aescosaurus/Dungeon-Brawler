var dt = get_delta_time()
if( argument_count > 1 ) dt = argument[1]
timer = argument[0]

timer[0] += get_delta_time()

return( timer[0] >= timer[1] )