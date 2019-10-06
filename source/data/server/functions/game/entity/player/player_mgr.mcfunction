function server:game/time/update_entity
execute if score @s[scores={double_reward=1}] entity_upd_t = #const UPD_CYCLE run function server:game/time/double_reward_timer
execute if score @s[scores={double_loot=1}] entity_upd_t = #const UPD_CYCLE run function erver:game/time/double_loot_timer
execute if score @s stat_played = #const UPD_CYCLE run function server:game/time/gametime

tag @s[tag=!_e.player_join_msg,scores={_h.leave_game=1..}] add _e.player_join_msg
tag @s[tag=!_e.player_rest_msg,scores={_h.play_msg_t=72000..}] add _e.player_rest_msg
kill @s[tag=_e.player_join_msg,tag=ENTITY_FLAG_IN_COMBAT]

execute at @s[tag=!SPELL_AURA_GHOST,scores={_h.has_died=1..}] run function server:game/entity/player/initialize_player_corpse
execute at @s[tag=!SPELL_AURA_GHOST,scores={_h.is_wounded=1..}] run function server:game/entity/player/get_player_damaged

execute at @s run function server:game/entity/player/get_player_level
execute if score @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE] entity_upd_t = #const UPD_CYCLE run function server:game/entity/player/get_player_fatigue_level

execute at @s[type=minecraft:player,tag=SPELL_AURA_GHOST,tag=ENTITY_FLAG_TRAVEL_NETHER] run function server:game/spells/spell_teleport_nether
scoreboard players set @e[type=minecraft:player,tag=SPELL_AURA_GHOST] _h.has_died 0
tag @s[tag=SPELL_AURA_GHOST,scores={_h.has_died=0}] remove SPELL_AURA_GHOST

execute if entity @s[tag=_e.get_guid] run function server:game/entity/get_entity_guid