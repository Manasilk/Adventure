summon minecraft:villager ~ ~ ~ {CustomName:'{"translate":"quest_giver"}',CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Invulnerable:1b,Willing:0b,VillagerData:{level:0,profession:"minecraft:none",type:"minecraft:plains"},Offers:{Recipes:[]},Tags:["conversation.send_menu","creature.set_default_gossip_flags"]}
tag @e[type=minecraft:villager,distance=0..0.001,sort=nearest,limit=1] add creature.set_flag_gossip
tag @e[type=minecraft:villager,distance=0..0.001,sort=nearest,limit=1] add creature.set_flag_questgiver
tag @e[type=minecraft:villager,distance=0..0.001,sort=nearest,limit=1] add creature.set_flag_quest_start
tag @e[type=minecraft:villager,distance=0..0.001,sort=nearest,limit=1] add creature.set_flag_quest_end