function server:game/time/update_entity
execute if score @s entity_upd_t = #const UPD_CYCLE run function server:game/entity/creature/this.get_default_weapon
execute if score @s[tag=ENTITY_FLAG_PILLAGER_CAPTAIN] entity_upd_t = #const UPD_CYCLE run function server:game/entity/creature/this.get_default_armor

execute if score @s entity_upd_t = #const UPD_CYCLE run effect clear @s minecraft:invisibility
execute if score @s entity_upd_t = #const UPD_CYCLE run tag @s remove npc_pillager
execute if score @s entity_upd_t = #const UPD_CYCLE run function server:game/entity/creature/this.restore_default_ai