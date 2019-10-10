#This function is used to update properties of all entities in the world
execute unless entity @s[tag=_e.initialized_entry,tag=!ENTITY_FLAG_SERVER_CONTROLLED] run function server:game/entity/creature/this.initialize

#Calls the functions below if the current playercount has been changed since last update
# and applies modifications to the entity's attributes
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,tag=_e.initialized_scaling] run function server:game/entity/creature/this.reset_scaling
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=!_e.initialized_scaling] run function server:game/entity/creature/this.get_modifiers

execute store result score @s[tag=ENTITY_FLAG_SPECIALINFO,tag=ENTITY_FLAG_IN_COMBAT] entity_curhp run data get entity @s Health 1
execute unless score @s[tag=ENTITY_FLAG_SPECIALINFO,tag=ENTITY_FLAG_IN_COMBAT] entity_temphp = @s entity_curhp run function server:game/entity/creature/this.update_nameplate

execute if entity @s[type=minecraft:spider,tag=!ENTITY_FLAG_IN_COMBAT,tag=ENTITY_ACTION_NEUTRAL] if score #dbc.server world_daytime matches 13000..23999 run function server:game/entity/creature/this.convert_hostile
execute if entity @s[type=minecraft:spider,tag=!ENTITY_FLAG_IN_COMBAT,tag=ENTITY_ACTION_HOSTILE] if score #dbc.server world_daytime matches 0..12999 run function server:game/entity/creature/this.convert_neutral

execute if entity @s[tag=_h.wb_show_info] run function builder:actions_list/show_info/this.show_entity_data
execute at @s[tag=_h.wb_update_npc] run function builder:actions_list/update_entity/this.update_entity
execute if entity @s[tag=_h.wb_despawn_npc] run function builder:actions_list/update_entity/this.despawn