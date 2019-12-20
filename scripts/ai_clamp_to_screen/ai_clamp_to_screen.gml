var half_width = sprite_get_width( sprite_index ) / 2
var half_height = sprite_get_height( sprite_index ) / 2

if( x - half_width < 0 ) x = 0 + half_width
if( x + half_width > room_width ) x = room_width - half_width
if( y - half_height < 0 ) y = 0 + half_height
if( y + half_height > room_height ) y = room_height - half_height