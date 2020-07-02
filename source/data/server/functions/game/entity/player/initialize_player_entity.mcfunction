advancement revoke @s everything
recipe take @s *
spawnpoint
team join Friendly @s

execute store result score @s entity_spawn.x run data get entity @s SpawnX 1
execute store result score @s entity_spawn.y run data get entity @s SpawnY 1
execute store result score @s entity_spawn.z run data get entity @s SpawnZ 1
function server:game/fairbox/metrics/get_updated_position

scoreboard players operation @s expansion = #dbc.server expansion
scoreboard players add #dbc.player player_id 1
scoreboard players operation @s player_id = #dbc.player player_id
scoreboard players set @s gender_sfx 0
scoreboard players set @s wepsound 0
scoreboard players set @s entity_level 0
scoreboard players set @s entity_nxtlvl 0
scoreboard players set @s entity_reclvl 0
scoreboard players operation @s entity_maxlvl = #dbc.server entity_maxlvl
scoreboard players set @s stat_adv_pts 0
scoreboard players set @s stat_dmg_dealt 0
scoreboard players set @s stat_dmg_taken 0
scoreboard players set @s stat_played_s 0
scoreboard players set @s stat_played_m 0
scoreboard players set @s stat_played_h 0
scoreboard players set @s stat_played_d 0
scoreboard players set @s stat_quests_cmpl 0
scoreboard players set @s stat_mob_kills 0
scoreboard players set @s combat_reset_t 0
scoreboard players set @s fatigue_level 0
scoreboard players set @s exp_gained 0

scoreboard players set @s double_loot 0
scoreboard players set @s double_reward 0
#initialize classic math objectives
scoreboard players set @s root_x 0
scoreboard players set @s root_i 0
scoreboard players set @s distance 0
#initialize builder objectives
scoreboard players set @s wb_class_id 0
scoreboard players set @s wb_class_type 0
scoreboard players set @s wb_option_id 0
scoreboard players set @s wb_page_cur 0
scoreboard players set @s wb_page_last 0
scoreboard players set @s wb_npc_type 0
scoreboard players set @s wb_gob_type 0
scoreboard players set @s wb_npc_id 0
scoreboard players set @s wb_gob_id 0
scoreboard players set @s wb_pos.x 0
scoreboard players set @s wb_pos.y 0
scoreboard players set @s wb_pos.z 0
scoreboard players set @s wb_rot.y 0
scoreboard players set @s wb_rot.x 0
#initialize handlers
scoreboard players set @s _h.leave_game 0
scoreboard players set @s _h.play_msg_t 0
scoreboard players set @s _h.is_wounded 0
scoreboard players set @s _h.is_victim 0
scoreboard players set @s _h.has_victim 0
scoreboard players set @s _h.has_died 0
scoreboard players set @s _h.wb_rmb 0
scoreboard players set @s _h.wb_menu_ret 0
scoreboard players set @s _h.wb_page_scrl 0

scoreboard players enable @s gender_sfx
scoreboard players enable @s played
scoreboard players enable @s log
scoreboard players enable @s help
scoreboard players enable @s clear

scoreboard players set @s rbac_access 0
function server:game/chat/login

tag @s add _e.initialized_entry
tag @s add _e.mh_sheathe