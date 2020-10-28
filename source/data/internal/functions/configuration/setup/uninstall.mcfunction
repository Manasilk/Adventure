#CONST
scoreboard objectives remove INT_MIN
scoreboard objectives remove INT_MAX
scoreboard objectives remove NULL
scoreboard objectives remove CNVT_OPP
scoreboard objectives remove UPD_CYCLE
scoreboard objectives remove TICKRATE
scoreboard objectives remove CNVT_MINHR
scoreboard objectives remove TPM
scoreboard objectives remove TPD
scoreboard objectives remove 2
scoreboard objectives remove 5
scoreboard objectives remove 6
scoreboard objectives remove 7
scoreboard objectives remove 10
scoreboard objectives remove 18
scoreboard objectives remove 38
scoreboard objectives remove 60
scoreboard objectives remove 90
scoreboard objectives remove 100
scoreboard objectives remove 158
scoreboard objectives remove 1000
scoreboard objectives remove TEMP

#WORLD
scoreboard objectives remove __setup
scoreboard objectives remove world_version
scoreboard objectives remove world_daytime
scoreboard objectives remove world_gametime
scoreboard objectives remove build_version
scoreboard objectives remove build_update
scoreboard objectives remove build_hotfix
scoreboard objectives remove build_revision
scoreboard objectives remove build_pd_d
scoreboard objectives remove build_pd_m
scoreboard objectives remove build_pd_y
scoreboard objectives remove __hours
scoreboard objectives remove __minutes
scoreboard objectives remove expansion
scoreboard objectives remove entity_tick
scoreboard objectives remove world_tick
scoreboard objectives remove garbage_tick
scoreboard objectives remove garbage_age
scoreboard objectives remove worldspawn.x
scoreboard objectives remove worldspawn.y
scoreboard objectives remove worldspawn.z
scoreboard objectives remove cfg.do_trim
scoreboard objectives remove cfg.do_spawn
scoreboard objectives remove cfg.boss_t
scoreboard objectives remove cfg.elite_t
scoreboard objectives remove cfg.normal_t
scoreboard objectives remove cfg.quest_t
scoreboard objectives remove cfg.prjctl_age
scoreboard objectives remove cfg.item_age
scoreboard objectives remove cfg.cls_log_t

#COMPUTE
scoreboard objectives remove distance
scoreboard objectives remove root_x
scoreboard objectives remove root_i
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove a
scoreboard objectives remove c
scoreboard objectives remove m
scoreboard objectives remove seed
scoreboard objectives remove rand
scoreboard objectives remove min
scoreboard objectives remove max
scoreboard objectives remove base
scoreboard objectives remove power
scoreboard objectives remove result
#SOUNDS
scoreboard objectives remove gender_sfx
scoreboard objectives remove wepsound 
#COMBAT
scoreboard objectives remove combat_reset_t
scoreboard objectives remove dmg_out0
scoreboard objectives remove dmg_out1
scoreboard objectives remove dmg_out2
scoreboard objectives remove dmg_in0
scoreboard objectives remove dmg_in1
scoreboard objectives remove dmg_in2
scoreboard objectives remove dmg_in3
#PLAYER
scoreboard objectives remove player_commands
scoreboard objectives remove player_debugging
scoreboard objectives remove player_builder
scoreboard objectives remove player_gamemode
scoreboard objectives remove player_id
scoreboard objectives remove rbac_access
scoreboard objectives remove entity_nxtlvl
scoreboard objectives remove entity_reclvl
scoreboard objectives remove entity_maxlvl
scoreboard objectives remove fatigue_level
scoreboard objectives remove stat_played
scoreboard objectives remove stat_adv_pts
scoreboard objectives remove stat_dmg_dealt
scoreboard objectives remove stat_dmg_taken
scoreboard objectives remove stat_quests_cmpl
scoreboard objectives remove stat_mob_kills
scoreboard objectives remove double_reward
scoreboard objectives remove double_loot
scoreboard objectives remove bonus_loot_t
scoreboard objectives remove bonus_reward_t
scoreboard objectives remove stat_played_s
scoreboard objectives remove stat_played_m
scoreboard objectives remove stat_played_h
scoreboard objectives remove stat_played_d
scoreboard objectives remove unstuck_cd
scoreboard objectives remove wepsound
scoreboard objectives remove chat.talk_to
scoreboard objectives remove has_victim
scoreboard objectives remove is_victim
scoreboard objectives remove is_offline
scoreboard objectives remove has_died
scoreboard objectives remove played_tick
scoreboard objectives remove is_wounded
#ENTITY
scoreboard objectives remove entity_id
scoreboard objectives remove owner_id
scoreboard objectives remove entity_guid
scoreboard objectives remove entity_hostility
scoreboard objectives remove entity_rank
scoreboard objectives remove entity_level
scoreboard objectives remove entity_hpprc
scoreboard objectives remove entity_basehp
scoreboard objectives remove entity_baseap
scoreboard objectives remove entity_curap
scoreboard objectives remove entity_curhp
scoreboard objectives remove entity_maxhp
scoreboard objectives remove entity_temphp
scoreboard objectives remove entity_armor
scoreboard objectives remove entity_phaseid
scoreboard objectives remove entity_gossip_id
scoreboard objectives remove has_target
scoreboard objectives remove entity_count
scoreboard objectives remove entity.spawn_x
scoreboard objectives remove entity.spawn_y
scoreboard objectives remove entity.spawn_z
scoreboard objectives remove entity.pos_x
scoreboard objectives remove entity.pos_y
scoreboard objectives remove entity.pos_z
scoreboard objectives remove entity.rot_x
scoreboard objectives remove entity.rot_y
scoreboard objectives remove exp_stored
scoreboard objectives remove exp_gained
scoreboard objectives remove handitem_id
scoreboard objectives remove handitem_model
#SPELLS
scoreboard objectives remove spell_pearl
scoreboard objectives remove spell_chorus
scoreboard objectives remove spell_undying
scoreboard objectives remove spell_potion
scoreboard objectives remove spell_proc_pbty
scoreboard objectives remove spell_scripts
scoreboard objectives remove spell_id
scoreboard objectives remove cast_delay
scoreboard objectives remove cast_timer
scoreboard objectives remove cast_timer_max
scoreboard objectives remove disorient_t
scoreboard objectives remove pacify_t
scoreboard objectives remove silence_t
#QUESTS
scoreboard objectives remove quest_id
scoreboard objectives remove quest_status
scoreboard objectives remove task_pobj_count
scoreboard objectives remove task_objectives
scoreboard objectives remove quest_log
scoreboard objectives remove quest_kill0
scoreboard objectives remove quest_kill1
scoreboard objectives remove quest_kill2
scoreboard objectives remove quest_kill3
scoreboard objectives remove npc_count0
scoreboard objectives remove npc_count1
scoreboard objectives remove npc_count2
scoreboard objectives remove npc_count3
scoreboard objectives remove quest_item0
scoreboard objectives remove quest_item1
scoreboard objectives remove quest_item2
scoreboard objectives remove quest_item3
scoreboard objectives remove item_count0
scoreboard objectives remove item_count1
scoreboard objectives remove item_count2
scoreboard objectives remove item_count3
scoreboard objectives remove quest_chat
scoreboard objectives remove exp_reward
scoreboard objectives remove quest_poi.x
scoreboard objectives remove quest_poi.y
scoreboard objectives remove quest_poi.z
#TEAMS
team remove Hostile
team remove Neutral
team remove Friendly
team remove QuestEnd
team remove QuestStart
#COLLISIONS
scoreboard objectives remove vmap_upd_t
scoreboard objectives remove has_collided
scoreboard objectives remove condition_type
#COMMANDS
scoreboard objectives remove played
scoreboard objectives remove log
scoreboard objectives remove admin
scoreboard objectives remove builder
scoreboard objectives remove debug
scoreboard objectives remove set_gm
scoreboard objectives remove trim
scoreboard objectives remove tplist
scoreboard objectives remove tp_mapid
scoreboard objectives remove tp_zoneid
scoreboard objectives remove tp_areaid
scoreboard objectives remove reset_quests
scoreboard objectives remove reset_stats
scoreboard objectives remove reset_xp
scoreboard objectives remove gmisland
scoreboard objectives remove unstuck
scoreboard objectives remove help
scoreboard objectives remove clear
#ANTICHEAT
scoreboard objectives remove _ac.v_lim
scoreboard objectives remove _ac.h_lim
scoreboard objectives remove _ac.pos_x0
scoreboard objectives remove _ac.pos_y0
scoreboard objectives remove _ac.pos_z0
scoreboard objectives remove _ac.pos_x1
scoreboard objectives remove _ac.pos_y1
scoreboard objectives remove _ac.pos_z1
scoreboard objectives remove _ac.dist_lim
scoreboard objectives remove _ac.fall_spd
scoreboard objectives remove _ac.gamemode
scoreboard objectives remove _ac.actions
scoreboard objectives remove _ac.flags
scoreboard objectives remove _ac.remflag_tick
scoreboard objectives remove anticheat_tick
#DEBUG
scoreboard objectives remove cmd_executed
scoreboard objectives remove border_target
scoreboard objectives remove border_size
scoreboard objectives remove loop_iteration
scoreboard objectives remove __time_h
scoreboard objectives remove __time_m
scoreboard objectives remove __event_id
scoreboard objectives remove __event_type
scoreboard objectives remove __event_idef
scoreboard objectives remove log.cls_time
scoreboard objectives remove success
#scoreboard objectives remove poi_err
#PRESET
scoreboard objectives remove CLASSIC
scoreboard objectives remove HELLFIRE
scoreboard objectives remove OUTLANDS
scoreboard objectives remove QUEST_COMPLETE
scoreboard objectives remove QUEST_INCOMPLETE
scoreboard objectives remove BLOCK_AIR
scoreboard objectives remove BLOCK_NON_SOLID
scoreboard objectives remove BLOCK_SOLID
scoreboard objectives remove SHOW_INFO
scoreboard objectives remove BIOME_FOREST
scoreboard objectives remove BIOME_JUNGLE
scoreboard objectives remove BIOME_DESERT
scoreboard objectives remove BIOME_MESA
scoreboard objectives remove BIOME_OCEAN
scoreboard objectives remove BIOME_TAIGA
scoreboard objectives remove BIOME_TUNDRA
scoreboard objectives remove BIOME_STONE
scoreboard objectives remove BIOME_SAVANNAH
scoreboard objectives remove BIOME_NETHER
scoreboard objectives remove BIOME_VOID
scoreboard objectives remove TYPE_DEBUG
scoreboard objectives remove TYPE_INFO
scoreboard objectives remove TYPE_WARNING
scoreboard objectives remove TYPE_ERROR
scoreboard objectives remove ENTITY_FRIENDLY
scoreboard objectives remove ENTITY_NEUTRAL
scoreboard objectives remove ENTITY_HOSTILE
#WORLD_BUILDER
scoreboard objectives remove wb.class_id
scoreboard objectives remove wb.type_id
scoreboard objectives remove wb.option_id
scoreboard objectives remove wb.npc_type
scoreboard objectives remove wb.gob_type
scoreboard objectives remove wb.npc_id
scoreboard objectives remove wb.gob_id
scoreboard objectives remove wb.biome_id
scoreboard objectives remove wb.struct_itr
scoreboard objectives remove wb.pos_x
scoreboard objectives remove wb.pos_y
scoreboard objectives remove wb.pos_z
scoreboard objectives remove wb.rot_y
scoreboard objectives remove wb.rot_x
scoreboard objectives remove start.x
scoreboard objectives remove start.y
scoreboard objectives remove start.z
scoreboard objectives remove end.x
scoreboard objectives remove end.y
scoreboard objectives remove end.z
scoreboard objectives remove size.x
scoreboard objectives remove size.y
scoreboard objectives remove size.z
scoreboard objectives remove iterator.x
scoreboard objectives remove iterator.y
scoreboard objectives remove iterator.z
#SPECIAL BLOCKS
execute in minecraft:overworld run fill -1 0 -1 1 2 1 minecraft:air
execute in minecraft:the_nether run fill -1 0 -1 1 2 1 minecraft:air
execute in minecraft:the_end run fill -1 0 -1 1 2 1 minecraft:air
#FORCELOADED CHUNKS
execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0
execute in minecraft:the_end run forceload remove 0 0

#Revoke all player advancements
advancement revoke @s from internal:world/account/character/root
advancement revoke @s from internal:world/exploration/root
advancement revoke @s from internal:world/feat_of_strength/root

#Revoke all custom recipes
recipe take @s internal:misc/iron_horse_armor
recipe take @s internal:misc/golden_horse_armor
recipe take @s internal:misc/diamond_horse_armor
recipe take @s internal:misc/elytra
recipe take @s internal:misc/nametag
recipe take @s internal:misc/saddle
recipe take @s internal:misc/trident

#Reset all fakeplayers
scoreboard players reset #world
scoreboard players reset #entity
scoreboard players reset #player
scoreboard players reset #area_trigger
scoreboard players reset #object
scoreboard players reset #garbage
scoreboard players reset #anticheat
scoreboard players reset #preset
scoreboard players reset #const
scoreboard players reset #temp
scoreboard players reset #log
scoreboard players reset #player.inventory_slot
scoreboard players reset #player.inventory_slot_count

#Set worldspawn at (0,0)
execute in minecraft:overworld positioned 0 0 0 run setworldspawn

#Empty all logs
data remove storage log:world event
data remove storage log:world_builder event
data remove storage internal:world buildname

#Set state to STATE_SETUP_DOES_NOT_EXIST
data modify storage internal:world setup[].state set value -1