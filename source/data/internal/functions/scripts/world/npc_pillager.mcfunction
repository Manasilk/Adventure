function internal:world/general/time/update_entity
execute if score @s entity_tick = #const UPD_CYCLE run function internal:world/entity/creature/set_spawn_equipment

execute if score @s entity_tick = #const UPD_CYCLE run effect clear @s minecraft:invisibility
execute if score @s entity_tick = #const UPD_CYCLE run tag @s remove npc_pillager
execute if score @s entity_tick = #const UPD_CYCLE run function internal:world/entity/creature/restore_default_ai