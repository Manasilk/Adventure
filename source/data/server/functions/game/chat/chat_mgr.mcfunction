#player.events
execute if entity @s[tag=_e.player_join_msg] run function server:game/chat/login
execute if entity @s[tag=_e.player_rest_msg] run function server:game/chat/rest
execute if entity @s[tag=_e.player_levelup_msg] run function server:game/chat/levelup
execute if entity @s[tag=_e.bonus_reward_msg] run function server:game/chat/bonus_reward
execute if entity @s[tag=_e.bonus_loot_msg] run function server:game/chat/bonus_loot
execute if entity @s[tag=_e.quest_log_full_msg] run function server:game/chat/quest_log_full
execute if entity @s[tag=_e.quest_obj_cmpl_msg] run function server:game/chat/quest_objective
execute if entity @s[scores={played=1..}] run function server:game/chat/played_stat