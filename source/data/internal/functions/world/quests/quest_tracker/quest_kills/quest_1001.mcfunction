scoreboard players reset @s[scores={quest_kill0=1..}] quest_kill0
scoreboard players reset @s[scores={quest_kill1=1..}] quest_kill1
scoreboard players reset @s[scores={quest_kill2=1..}] quest_kill2
scoreboard players reset @s[scores={quest_kill3=1..}] quest_kill3
scoreboard players add @s[advancements={internal:world/quest/objectives/npc_or_go/quest_1001={REQ_NPC_OR_GO_0=true}}] quest_kill0 1
scoreboard players add @s[advancements={internal:world/quest/objectives/npc_or_go/quest_1001={REQ_NPC_OR_GO_1=true}}] quest_kill1 1
scoreboard players add @s[advancements={internal:world/quest/objectives/npc_or_go/quest_1001={REQ_NPC_OR_GO_2=true}}] quest_kill2 1
scoreboard players add @s[advancements={internal:world/quest/objectives/npc_or_go/quest_1001={REQ_NPC_OR_GO_3=true}}] quest_kill3 1
advancement revoke @s only internal:world/quest/objectives/npc_or_go/quest_1001 REQ_NPC_OR_GO_0
advancement revoke @s only internal:world/quest/objectives/npc_or_go/quest_1001 REQ_NPC_OR_GO_1
advancement revoke @s only internal:world/quest/objectives/npc_or_go/quest_1001 REQ_NPC_OR_GO_2
advancement revoke @s only internal:world/quest/objectives/npc_or_go/quest_1001 REQ_NPC_OR_GO_3

function internal:world/quests/get_owned_tracker
execute as @e[type=#internal:area_trigger,tag=area_trigger.linked_to_owner,limit=1] at @s run function internal:world/quests/get_quest_status