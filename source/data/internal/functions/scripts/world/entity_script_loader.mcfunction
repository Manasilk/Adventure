#This is where scripts' loading functions should be declared
#function internal:scripts/world/<type>

#Generic normal mob scripts
execute if entity @s[type=minecraft:pillager,tag=npc_pillager] run function internal:scripts/world/npc_pillager
execute if entity @s[type=minecraft:spider,tag=ENTITY_FLAG_IN_COMBAT,tag=npc_spider] run function internal:scripts/world/npc_spider
execute if entity @s[type=minecraft:cave_spider,tag=ENTITY_FLAG_IN_COMBAT,tag=npc_spider] run function internal:scripts/world/npc_spider

#Generic boss mob scripts
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=boss_ravager] run function internal:scripts/world/boss_ravager
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=boss_pillager] run function internal:scripts/world/boss_pillager
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=boss_hoglin] run function internal:scripts/world/boss_piglin_brute
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=boss_piglin_brute] run function internal:scripts/world/boss_piglin_brute
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=boss_iron_golem] run function internal:scripts/world/boss_iron_golem
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=boss_elder_guardian] run function internal:scripts/world/boss_elder_guardian
execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=boss_wither] run function internal:scripts/world/boss_wither