#player
execute if entity @s[tag=_e.player_join_msg] run function server:game/chat/send_login_message
execute if entity @s[tag=_e.player_rest_msg] run function server:game/chat/send_rest_message
execute if entity @s[tag=_e.player_levelup_msg] run function server:game/chat/send_levelup_message
execute if entity @s[tag=_e.bonus_reward_msg] run function server:game/chat/send_bonus_reward_message
execute if entity @s[tag=_e.bonus_loot_msg] run function server:game/chat/send_bonus_loot_message
execute if entity @s[tag=_e.error_cant_fill_msg] run function server:game/chat/send_cant_fill_message
execute if entity @s[tag=_e.quest_obj_cmpl_msg] run function server:game/chat/send_quest_objective_complete_message