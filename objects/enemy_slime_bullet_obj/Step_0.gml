var dt = get_delta_time()

x += x_vel * fly_speed * dt
y += y_vel * fly_speed * dt

anim_timer[0] += dt
if( timer_is_done( anim_timer ) ) anim_timer[0] = 0.0
anim_pulse( anim_timer,3.5 )