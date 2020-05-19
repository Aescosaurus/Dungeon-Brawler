cur_level = 0
done_loading = false

level_generate()

cur_floor = 0

enemy_pool[0,0] = enemy_slime_obj;     enemy_parts[0,0] = enemy_slime_particle_spr
enemy_pool[0,1] = enemy_snake_obj;     enemy_parts[0,1] = enemy_snake_particle_spr
enemy_pool[0,2] = enemy_snizzard_obj;  enemy_parts[0,2] = enemy_snake_particle_spr
enemy_pool[0,3] = enemy_ghost_obj;     enemy_parts[0,3] = enemy_slime_particle_spr
enemy_pool[0,4] = boss_snake_obj;      enemy_parts[0,4] = enemy_snake_particle_spr

enemy_pool[1,0] = enemy_crab_obj;      enemy_parts[1,0] = enemy_sea_particle_spr
enemy_pool[1,1] = enemy_jelly_obj;     enemy_parts[1,1] = enemy_sea_particle_spr
enemy_pool[1,2] = enemy_fish_obj;      enemy_parts[1,2] = enemy_sea_particle_spr
enemy_pool[1,3] = enemy_squid_obj;     enemy_parts[1,3] = enemy_sea_particle_spr
enemy_pool[1,4] = boss_shark_obj;      enemy_parts[1,4] = enemy_snake_particle_spr

enemy_pool[2,0] = enemy_butcher_obj;   enemy_parts[2,0] = enemy_slime_particle_spr
enemy_pool[2,1] = enemy_alien_obj;     enemy_parts[2,1] = enemy_slime_particle_spr
enemy_pool[2,2] = enemy_monster_obj;   enemy_parts[2,2] = enemy_slime_particle_spr
enemy_pool[2,3] = enemy_lava_blob_obj; enemy_parts[2,3] = enemy_slime_particle_spr
enemy_pool[2,4] = boss_blob_obj;      enemy_parts[2,4] = enemy_slime_particle_spr