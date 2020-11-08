#User Commands
execute if entity @s[tag=messages.special.empty_chat] run function internal:world/chat/messages/special/empty_chat
execute if entity @s[tag=messages.special.generic_tellraw] run function internal:world/chat/messages/special/generic_tellraw
execute if entity @s[tag=messages.info.help] run function internal:world/chat/messages/info/help
execute if entity @s[tag=messages.info.logged_in] run function internal:world/chat/messages/info/logged_in
execute if entity @s[tag=messages.info.combat_log] run function internal:world/chat/messages/info/combat_log
execute if entity @s[tag=messages.info.played_statistics] run function internal:world/chat/messages/info/played_statistics
execute if entity @s[tag=messages.error.cannot_use_command_yet] run function internal:world/chat/messages/error/unstuck_cooldown
execute if entity @s[tag=messages.info.spawnpoint] run function internal:world/chat/messages/info/spawnpoint

#Player Events
execute if entity @s[tag=messages.info.rest] run function internal:world/chat/messages/info/rest
execute if entity @s[tag=messages.info.levelup] run function internal:world/chat/messages/info/levelup
execute if entity @s[tag=messages.info.quest_target_complete] run function internal:world/chat/messages/info/quest_target_complete
execute if entity @s[tag=messages.error.cannot_accept_more_quests] run function internal:world/chat/messages/error/quest_log_full

#World Events
execute if entity @s[tag=messages.info.bonus_loot_event] run function internal:world/chat/messages/info/bonus_loot
execute if entity @s[tag=messages.info.bonus_reward_event] run function internal:world/chat/messages/info/bonus_reward

#World Builder
execute if entity @s[tag=messages.error.invalid_level] run function internal:world/chat/messages/error/level_invalid
execute if entity @s[tag=messages.error.invalid_biome] run function internal:world/chat/messages/error/biome_invalid
execute if entity @s[tag=messages.error.invalid_block] run function internal:world/chat/messages/error/block_invalid
execute if entity @s[tag=messages.error.cannot_fill_area] run function internal:world/chat/messages/error/cant_fill