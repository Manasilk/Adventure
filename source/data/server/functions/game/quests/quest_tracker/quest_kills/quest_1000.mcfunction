scoreboard players reset @s[scores={quest_kills0=1..}] quest_kills0
scoreboard players reset @s[scores={quest_kills1=1..}] quest_kills1
scoreboard players reset @s[scores={quest_kills2=1..}] quest_kills2
scoreboard players reset @s[scores={quest_kills3=1..}] quest_kills3
scoreboard players add @s[advancements={server:quest/objectives/npc_or_go/quest_1000_0=true}] quest_kills0 1
scoreboard players add @s[advancements={server:quest/objectives/npc_or_go/quest_1000_1=true}] quest_kills1 1
scoreboard players add @s[advancements={server:quest/objectives/npc_or_go/quest_1000_2=true}] quest_kills2 1
scoreboard players add @s[advancements={server:quest/objectives/npc_or_go/quest_1000_3=true}] quest_kills3 1
advancement revoke @s only server:quest/objectives/npc_or_go/quest_1000_0
advancement revoke @s only server:quest/objectives/npc_or_go/quest_1000_1
advancement revoke @s only server:quest/objectives/npc_or_go/quest_1000_2
advancement revoke @s only server:quest/objectives/npc_or_go/quest_1000_3

function server:game/quests/get_owned_tracker
execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=_e.get_owned_by,distance=0..31.999,limit=1] at @s run function server:game/quests/get_quest_status