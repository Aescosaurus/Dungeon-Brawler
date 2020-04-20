cur_level = 4
// max_level_count = 12
done_loading = false

level_generate()

// n_floors = 1
cur_floor = 0

enemy_pool[0,0] = enemy_slime_obj;    enemy_parts[0,0] = enemy_slime_particle_spr
enemy_pool[0,1] = enemy_snake_obj;    enemy_parts[0,1] = enemy_snake_particle_spr
enemy_pool[0,2] = enemy_snizzard_obj; enemy_parts[0,2] = enemy_snake_particle_spr
enemy_pool[0,3] = enemy_ghost_obj;    enemy_parts[0,3] = enemy_slime_particle_spr
enemy_pool[0,4] = boss_snake_obj;     enemy_parts[0,4] = enemy_snake_particle_spr

enemy_pool[1,0] = enemy_jelly_obj;    enemy_parts[1,0] = enemy_sea_particle_spr
enemy_pool[1,1] = enemy_crab_obj;     enemy_parts[1,1] = enemy_sea_particle_spr
enemy_pool[1,2] = enemy_fish_obj;     enemy_parts[1,2] = enemy_sea_particle_spr
enemy_pool[1,3] = enemy_squid_obj;    enemy_parts[1,3] = enemy_sea_particle_spr