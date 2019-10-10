tag @s[type=#server:npc_boss] add ENTITY_FLAG_EXTRA_INSTANCE_BIND
tag @s[type=#server:npc_boss] add ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK
tag @s[scores={entity_gossip_id=1..}] add ENTITY_FLAG_GOSSIP
tag @s[scores={quest_id=1..}] add ENTITY_FLAG_QUEST_RELATION
tag @s[type=minecraft:villager,scores={quest_id=1..}] add ENTITY_FLAG_QUESTGIVER
tag @s[type=minecraft:villager,tag=ENTITY_FLAG_EXTRA_TRIGGER] add ENTITY_FLAG_GHOST
tag @s[nbt={NoAI:1b}] add ENTITY_FLAG_NO_AI
tag @s[nbt={Invulnerable:1b}] add ENTITY_FLAG_NON_ATTACKABLE
tag @s[nbt={Attributes:[{Base:10.0d,Name:"generic.maxHealth"}]}] add ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK
effect give @s[tag=ENTITY_FLAG_GHOST] minecraft:invisibility 1000000 0 true
effect give @s[tag=ENTITY_FLAG_NON_ATTACKABLE] minecraft:resistance 1000000 10 true