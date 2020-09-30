function internal:world/general/time/update_entity
execute if score @s entity_tick = #const UPD_CYCLE run function internal:world/entity/player/update_entity

tag @s[tag=!messages.info.logged_in,scores={is_offline=1..}] add messages.info.logged_in
tag @s[tag=!messages.info.rest,scores={played_tick=72000..}] add messages.info.rest
kill @s[tag=messages.info.logged_in,tag=ENTITY_FLAG_IN_COMBAT]

execute at @s[tag=!SPELL_AURA_GHOST,scores={has_died=1..}] run function internal:world/entity/player/initialize_player_corpse
execute at @s[tag=!SPELL_AURA_GHOST,scores={is_wounded=1..}] run function internal:world/entity/player/sound_events/is_wounded

execute at @s run function internal:world/entity/player/check_player_level

tag @s[tag=SPELL_AURA_GHOST,tag=ENTITY_FLAG_TRAVEL_NETHER] remove ENTITY_FLAG_TRAVEL_NETHER
tag @s[tag=SPELL_AURA_GHOST,tag=ENTITY_FLAG_TRAVEL_END] remove ENTITY_FLAG_TRAVEL_END
scoreboard players set @e[type=minecraft:player,tag=SPELL_AURA_GHOST] has_died 0
execute if score @s[tag=SPELL_AURA_GHOST] has_died matches 0 run function internal:world/entity/player/respawn

function internal:world/entity/player/set_weapon_type
execute at @s[tag=sound.play_weapon_sound,tag=!sound.sheathe_mainhand] run function internal:world/entity/player/sound_events/sheathe_weapon
execute at @s[tag=sound.play_weapon_sound,tag=sound.sheathe_mainhand] run function internal:world/entity/player/sound_events/unsheathe_weapon