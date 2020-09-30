#Trigger combat state if received damage and show aggro hover particle
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,nbt={HurtTime:10s}] run function internal:world/entity/scripted_behavior/action/enter_combat

#Search for nearby players and enter combat with them if in range
execute if entity @s[tag=aggressor_ai,tag=!ENTITY_FLAG_IN_COMBAT] run function internal:world/entity/scripted_behavior/action/spread_combat

#Call a function to restore the base values for the entity's attributes
# and return the creature to the starting spawn position
execute if entity @s[tag=!passive_ai,tag=ENTITY_FLAG_IN_COMBAT] unless entity @a[tag=ENTITY_FLAG_IN_COMBAT,distance=0..31.999] run function internal:world/entity/scripted_behavior/action/reset
execute if entity @s[tag=passive_ai,tag=ENTITY_FLAG_IN_COMBAT] unless entity @a[tag=ENTITY_FLAG_IN_COMBAT,distance=0..15.999] run function internal:world/entity/scripted_behavior/action/reset