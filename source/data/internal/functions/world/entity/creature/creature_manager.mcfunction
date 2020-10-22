#This function is used to update properties of all entities in the world
execute unless entity @s[tag=creature.initialized_spawn_data,tag=!ENTITY_FLAG_SERVER_CONTROLLED,tag=!ENTITY_FLAG_OBJECT_ACTOR] run function internal:world/entity/creature/initialize_spawn_data

#Calls the functions below if the current playercount has been changed since last update
# and applies modifications to the entity's attributes
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,tag=creature.initialized_scaling] run function internal:world/entity/creature/restore_base_attributes
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=!creature.initialized_scaling] run function internal:world/entity/creature/set_modifiers

execute store result score @s[tag=ENTITY_FLAG_SPECIALINFO,tag=ENTITY_FLAG_IN_COMBAT,nbt={HurtTime:10s}] entity_curhp run data get entity @s Health 1
execute unless score @s[tag=ENTITY_FLAG_SPECIALINFO,tag=ENTITY_FLAG_IN_COMBAT] entity_temphp = @s entity_curhp run function internal:world/entity/creature/update_nameplate

execute if entity @s[type=minecraft:spider,team=Neutral,tag=!ENTITY_FLAG_IN_COMBAT] if score #world world_daytime matches 13000..23999 run function internal:world/entity/creature/set_action_hostile
execute if entity @s[type=minecraft:spider,team=Hostile,tag=!ENTITY_FLAG_IN_COMBAT] if score #world world_daytime matches 0..12999 run function internal:world/entity/creature/set_action_neutral

execute if entity @s[tag=ENTITY_FLAG_GOSSIP] if entity @a[scores={chat.triggered=1..},distance=0..5.299] run tag @s add conversation.send_menu