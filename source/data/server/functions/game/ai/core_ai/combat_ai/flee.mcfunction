tag @s[tag=_e.update_ai] add _e.get_entity_rotation
tag @s[tag=_e.update_ai] add _e.disable_ai
execute if entity @s[tag=_e.update_ai] run function server:game/ai/core_ai/combat_ai/update_ai

execute at @s[scores={entity_upd_t=0..59}] run function server:game/movement/flee_from_target
tag @s[scores={entity_upd_t=61..}] remove ENTITY_FLAG_FLEEING
tag @s[scores={entity_upd_t=61..}] remove _e.get_fleeing_rotation
tag @s[scores={entity_upd_t=60..}] add _e.enable_ai
tag @s[scores={entity_upd_t=60..}] add _e.update_ai
scoreboard players reset @s[scores={entity_upd_t=61..}] entity_upd_t