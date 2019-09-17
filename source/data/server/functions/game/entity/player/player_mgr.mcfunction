function server:game/time/update_entity
execute if score @s stat_played = #const UPD_CYCLE run function server:game/time/gametime

tag @s[tag=!H_PLAYER_JOIN_GAME,scores={_h.leave_game=1..}] add H_PLAYER_JOIN_GAME
tag @s[tag=!H_PLAYED_LONG_REST,scores={_h.play_msg_t=72000..}] add H_PLAYED_LONG_REST
tag @s[tag=!H_SHOW_PLAYER_STATS,scores={_h.show_stats_t=100..}] add H_SHOW_PLAYER_STATS

execute at @s[tag=!SPELL_AURA_GHOST,scores={_h.has_died=1..}] run function server:game/entity/player/initialize_player_corpse
execute at @s[tag=!SPELL_AURA_GHOST,scores={_h.is_wounded=1..}] run function server:game/entity/player/get_player_damaged

execute at @s run function server:game/entity/player/get_player_level
execute if score @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE] entity_upd_t = #const NULL run function server:game/entity/player/get_player_fatigue_level

scoreboard players set @e[type=minecraft:player,tag=SPELL_AURA_GHOST] _h.has_died 0
tag @s[tag=SPELL_AURA_GHOST,scores={_h.has_died=0}] remove SPELL_AURA_GHOST