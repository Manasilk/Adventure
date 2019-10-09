scoreboard players add @s entity_upd_t 1
effect clear @s[scores={entity_upd_t=40..}] minecraft:invisibility
execute if score @s entity_upd_t matches 40 run function server:game/entity/creature/this.get_default_weapon
execute if score @s[tag=ENTITY_FLAG_PILLAGER_CAPTAIN] entity_upd_t matches 40 run function server:game/entity/creature/this.get_default_armor
execute if score @s entity_upd_t matches 40 run function server:game/entity/creature/this.restore_default_ai
execute unless score @s entity_upd_t matches 0..39 run tag @s remove npc_pillager_guard