function server:game/time/update_entity
execute if score @s entity_upd_t = #const UPD_CYCLE run function server:game/entity/player/update
execute if entity @s[tag=SHOW_TOOLTIP] run function tools:debugging/show_tooltip

tag @s[tag=!_e.player_join_msg,scores={_h.leave_game=1..}] add _e.player_join_msg
tag @s[tag=!_e.player_rest_msg,scores={_h.play_msg_t=72000..}] add _e.player_rest_msg
kill @s[tag=_e.player_join_msg,tag=ENTITY_FLAG_IN_COMBAT]

execute at @s[tag=!SPELL_AURA_GHOST,scores={_h.has_died=1..}] run function server:game/entity/player/initialize_player_corpse
execute at @s[tag=!SPELL_AURA_GHOST,scores={_h.is_wounded=1..}] run function server:game/entity/player/get_player_damaged

execute at @s run function server:game/entity/player/get_player_level

tag @s[tag=SPELL_AURA_GHOST,tag=ENTITY_FLAG_TRAVEL_NETHER] remove ENTITY_FLAG_TRAVEL_NETHER
tag @s[tag=SPELL_AURA_GHOST,tag=ENTITY_FLAG_TRAVEL_END] remove ENTITY_FLAG_TRAVEL_END
scoreboard players set @e[type=minecraft:player,tag=SPELL_AURA_GHOST] _h.has_died 0
tag @s[tag=SPELL_AURA_GHOST,scores={_h.has_died=0}] remove SPELL_AURA_GHOST

execute if entity @s[tag=!rbac.commands,scores={_h.fill_bucket=1..}] run function server:game/entity/item/clear_prohibit_fill_items

function server:game/entity/player/get_weapon_type
execute if entity @s[tag=!_e.mh_sheathe,tag=_h.wep_sound] run function server:game/entity/player/sheathe_weapon
execute if entity @s[tag=_e.mh_sheathe,tag=_h.wep_sound] run function server:game/entity/player/unsheathe_weapon
execute store result score @s entity_curhp run data get entity @s Health 1