tag @s[tag=!_e.set_entity_flee,scores={entity_hpprc=0..20}] add ENTITY_FLAG_FLEEING
tag @s[tag=!_e.set_entity_flee,scores={entity_hpprc=0..20}] add _e.update_ai
tag @s[tag=!_e.set_entity_flee,scores={entity_hpprc=0..20}] add _e.set_entity_flee

scoreboard players add @s[tag=ENTITY_FLAG_FLEEING] entity_upd_t 1