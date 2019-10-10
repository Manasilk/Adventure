execute unless entity @s[tag=ENTITY_FLAG_FORCE_MOVEMENT] run function server:game/entity/creature/get_fleeing_rotation
execute unless entity @s[tag=ENTITY_FLAG_NO_AI] run function server:game/ai/core_ai/combat_ai/disable_ai
tag @s[tag=!ENTITY_FLAG_FORCE_MOVEMENT] add ENTITY_FLAG_FORCE_MOVEMENT

execute if score @s entity_upd_t matches 0..59 run function server:game/movement/flee_from_target
tag @s[scores={entity_upd_t=61..}] remove ENTITY_FLAG_FLEEING
tag @s[scores={entity_upd_t=61..}] remove ENTITY_FLAG_FORCE_MOVEMENT
scoreboard players reset @s[scores={entity_upd_t=61..}] entity_upd_t