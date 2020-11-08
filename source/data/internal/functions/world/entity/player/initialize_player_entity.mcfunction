advancement revoke @s everything
recipe take @s *
team join Friendly @s

function internal:world/entity/player/set_spawnpoint
function internal:world/anticheat/metrics/get_updated_position

scoreboard players operation @s expansion = #world expansion
scoreboard players add #player player_id 1
scoreboard players operation @s player_id = #player player_id
scoreboard players set @s gender_sfx 0
scoreboard players set @s wepsound 0
scoreboard players set @s entity_level 0
scoreboard players set @s entity_nxtlvl 0
scoreboard players set @s entity_reclvl 0
scoreboard players operation @s entity_maxlvl = #world entity_maxlvl
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
scoreboard players set @s quest_log 0

scoreboard players set @s double_loot 0
scoreboard players set @s double_reward 0
#initialize classic compute objectives
scoreboard players set @s root_x 0
scoreboard players set @s root_i 0
scoreboard players set @s distance 0
#initialize world_builder objectives
scoreboard players set @s wb.class_id 0
scoreboard players set @s wb.type_id 0
scoreboard players set @s wb.option_id 0
scoreboard players set @s wb.npc_type 0
scoreboard players set @s wb.gob_type 0
scoreboard players set @s wb.npc_id 0
scoreboard players set @s wb.gob_id 0
scoreboard players set @s wb.pos_x 0
scoreboard players set @s wb.pos_y 0
scoreboard players set @s wb.pos_z 0
scoreboard players set @s wb.rot_y 0
scoreboard players set @s wb.rot_x 0
#initialize handlers
scoreboard players set @s is_offline 0
scoreboard players set @s played_tick 0
scoreboard players set @s is_wounded 0
scoreboard players set @s is_victim 0
scoreboard players set @s has_victim 0
scoreboard players set @s has_died 0
scoreboard players set @s unstuck_cd 0

scoreboard players enable @s gender_sfx
scoreboard players enable @s played
scoreboard players enable @s log
scoreboard players enable @s help
scoreboard players enable @s clear
scoreboard players enable @s unstuck

scoreboard players set @s chat.main_menu 0
scoreboard players set @s chat.sub_menu 0
scoreboard players set @s chat.opts_menu 0

scoreboard players set @s rbac_access 1
scoreboard players enable @s admin

tag @s add player.initialized_spawn_data
tag @s add sound.sheathe_mainhand
tag @s add messages.info.logged_in