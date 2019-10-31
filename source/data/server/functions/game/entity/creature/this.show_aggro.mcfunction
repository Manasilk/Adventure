#Show particles indicating the mob has entered combat to all players in 32 blocks radius
# * Add tag to prevent spamming particles
# * Clear tag so the entity can respawn at default position when leaving combat
execute if entity @s[tag=ENTITY_FLAG_SPECIALINFO] run function server:game/entity/creature/this.update_nameplate
execute if entity @s[tag=aggressor_ai] run particle minecraft:angry_villager ~ ~2.15 ~ 0 0 0 1 1 normal @a[distance=0..31.999]
execute if entity @s[tag=reactor_ai] run particle minecraft:angry_villager ~ ~2.15 ~ 0 0 0 1 1 normal @a[distance=0..15.999]
execute if entity @s[tag=passive_ai] run particle minecraft:angry_villager ~ ~2.15 ~ 0 0 0 1 1 normal @a[distance=0..15.999]