#Trigger combat state if received damage and show aggro hover particle
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,nbt={HurtTime:10s}] run function server:game/ai/core_ai/combat_ai/enter_combat

#Call a function to restore the base values for the entity's attributes
# and return the creature to the starting spawn position
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT] unless entity @a[tag=ENTITY_FLAG_IN_COMBAT,distance=0..15.999] run function server:game/entity/ai/core_ai/combat_ai/reset