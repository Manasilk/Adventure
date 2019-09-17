#This function is used to update properties of all entities in the world
execute unless entity @s[tag=_e.initialized_entry] run function server:game/entity/creature/this.initialize

#Calls the functions below if the current playercount has been changed since last update
# and applies modifications to the entity's attributes
execute if entity @s[tag=_h.modify_attributes] run function server:game/entity/creature/this.reset_scaling

execute store result score @s[tag=ENTITY_FLAG_SHOW_INFO,tag=ENTITY_FLAG_IN_COMBAT] entity_curhp run data get entity @s Health 1
execute unless score @s[tag=ENTITY_FLAG_SHOW_INFO,tag=ENTITY_FLAG_IN_COMBAT] entity_temphp = @s entity_curhp run function server:game/entity/creature/this.update_nameplate