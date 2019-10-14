summon minecraft:villager ~ ~ ~ {CustomName:'{"translate":"quest_related"}',CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Invulnerable:1b,Willing:0b,VillagerData:{level:0,profession:"minecraft:none",type:"minecraft:plains"},Offers:{Recipes:[]}}
tag @e[type=minecraft:villager,distance=0..0.001,sort=nearest,limit=1] add _e.set_flag_gossip
tag @e[type=minecraft:villager,distance=0..0.001,sort=nearest,limit=1] add _e.get_flag_quest_relation
tag @e[type=minecraft:villager,distance=0..0.001,sort=nearest,limit=1] add QUEST_1000