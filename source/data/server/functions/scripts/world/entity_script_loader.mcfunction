#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute if entity @s[type=minecraft:pillager,tag=npc_pillager_guard] run function server:scripts/world/npc_pillager_guard
execute if entity @s[type=minecraft:pillager] run function server:scripts/world/npc_pillager_generic
execute if entity @s[type=minecraft:husk,tag=ENTITY_FLAG_IN_COMBAT,tag=npc_spellcaster_proto] run function server:scripts/world/npc_spellcaster_proto