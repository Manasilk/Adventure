#player
execute if entity @s[tag=_e.player_join_msg] run function server:game/chat/send_login_message
execute if entity @s[tag=_e.player_rest_msg] run function server:game/chat/send_rest_message
execute if entity @s[tag=_e.player_levelup_msg] run function server:game/chat/send_levelup_message

execute if entity @s[tag=_e.bonus_reward_msg] run function server:game/chat/send_bonus_reward_message
execute if entity @s[tag=_e.bonus_loot_msg] run function server:game/chat/send_bonus_loot_message

execute if entity @s[tag=_e.get_tellraw_msg] run function server:game/chat/send_tellraw_message