#player
execute if entity @s[tag=H_PLAYER_JOIN_GAME] run function server:game/chat/send_login_message
execute if entity @s[tag=H_PLAYED_LONG_REST] run function server:game/chat/send_rest_message
execute if entity @s[tag=H_PLAYER_LEVEL_UP] run function server:game/chat/send_levelup_message