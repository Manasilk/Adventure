function internal:world/general/time/update_respawn

execute if score @s entity_tick = #world cfg.normal_t run function internal:world/entity/area_trigger/add_summoned_spawn