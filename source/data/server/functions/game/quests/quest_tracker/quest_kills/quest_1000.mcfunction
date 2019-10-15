scoreboard players reset @s[scores={quest_kill0=1..}] quest_kill0
scoreboard players reset @s[scores={quest_kill1=1..}] quest_kill1
scoreboard players reset @s[scores={quest_kill2=1..}] quest_kill2
scoreboard players reset @s[scores={quest_kill3=1..}] quest_kill3
scoreboard players add @s[advancements={server:internal/quest/objectives/npc_or_go/quest_1000={REQ_NPC_OR_GO_0=true}}] quest_kill0 1
scoreboard players add @s[advancements={server:internal/quest/objectives/npc_or_go/quest_1000={REQ_NPC_OR_GO_1=true}}] quest_kill1 1
scoreboard players add @s[advancements={server:internal/quest/objectives/npc_or_go/quest_1000={REQ_NPC_OR_GO_2=true}}] quest_kill2 1
scoreboard players add @s[advancements={server:internal/quest/objectives/npc_or_go/quest_1000={REQ_NPC_OR_GO_3=true}}] quest_kill3 1
advancement revoke @s only server:internal/quest/objectives/npc_or_go/quest_1000 REQ_NPC_OR_GO_0
advancement revoke @s only server:internal/quest/objectives/npc_or_go/quest_1000 REQ_NPC_OR_GO_1
advancement revoke @s only server:internal/quest/objectives/npc_or_go/quest_1000 REQ_NPC_OR_GO_2
advancement revoke @s only server:internal/quest/objectives/npc_or_go/quest_1000 REQ_NPC_OR_GO_3

function server:game/quests/get_owned_tracker
execute as @e[type=#server:area_trigger,tag=_e.get_owned_by,limit=1] at @s run function server:game/quests/get_quest_status