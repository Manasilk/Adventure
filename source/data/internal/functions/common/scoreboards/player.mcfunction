scoreboard objectives add player_commands dummy {"translate":"dbc.player.admin_toggle"}
scoreboard objectives add player_debugging dummy {"translate":"dbc.player.debug_toggle"}
scoreboard objectives add player_builder dummy {"translate":"dbc.player.builder_toggle"}
scoreboard objectives add player_gamemode dummy {"translate":"dbc.player.gamemode_flag"}
scoreboard objectives add player_id dummy {"translate":"dbc.entity.entity_id"}
scoreboard objectives add rbac_access dummy {"translate":"dbc.player.rbac_perms"}
#This objective controls the sounds played when taking damage
#PLAYER_GAMEMODE_SURVIVAL         = 1,
#PLAYER_GAMEMODE_ADVENTURE        = 2,
#PLAYER_GAMEMODE_CREATIVE         = 4,
#PLAYER_GAMEMODE_SPECTATOR        = 8
scoreboard objectives add entity_nxtlvl dummy {"translate":"dbc.player.entity_nxtlvl"}
scoreboard objectives add entity_reclvl dummy {"translate":"dbc.player.entity_reclvl"}
scoreboard objectives add entity_maxlvl dummy {"translate":"dbc.player.entity_maxlvl"}
scoreboard objectives add fatigue_level dummy {"translate":"dbc.player.fatigue_level"}

scoreboard objectives add stat_played minecraft.custom:minecraft.play_one_minute {"translate":"dbc.player.stat_played"}
scoreboard objectives add stat_adv_pts dummy {"translate":"dbc.player.stat_adv_pts"}
scoreboard objectives add stat_dmg_dealt minecraft.custom:minecraft.damage_dealt {"translate":"dbc.player.stat_dmg_dealt"}
scoreboard objectives add stat_dmg_taken minecraft.custom:minecraft.damage_taken {"translate":"dbc.player.stat_dmg_taken"}
scoreboard objectives add stat_quests_cmpl dummy {"translate":"dbc.player.stat_quests_cmpl"}
scoreboard objectives add stat_mob_kills minecraft.custom:minecraft.mob_kills {"translate":"dbc.player.stat_mob_kills"}

scoreboard objectives add double_reward dummy {"translate":"dbc.player.double_rewards"}
scoreboard objectives add double_loot dummy {"translate":"dbc.player.double_loot"}
scoreboard objectives add bonus_loot_t dummy {"translate":"dbc.player.bonus_loot_t"}
scoreboard objectives add bonus_reward_t dummy {"translate":"dbc.player.bonus_reward_t"}

scoreboard objectives add stat_played_s dummy {"translate":"dbc.player.stat_played_s"}
scoreboard objectives add stat_played_m dummy {"translate":"dbc.player.stat_played_m"}
scoreboard objectives add stat_played_h dummy {"translate":"dbc.player.stat_played_h"}
scoreboard objectives add stat_played_d dummy {"translate":"dbc.player.stat_played_d"}
scoreboard objectives add unstuck_cd dummy {"translate":"dbc.player.unstuck_cd"}
scoreboard objectives add wepsound dummy

scoreboard objectives add chat.talk_to minecraft.custom:minecraft.talked_to_villager {"translate":"dbc.handler.player.interact"}
scoreboard objectives add has_victim dummy {"translate":"dbc.handler.player.has_victim"}
scoreboard objectives add is_victim dummy {"translate":"dbc.handler.player.is_victim"}
scoreboard objectives add is_offline minecraft.custom:minecraft.leave_game {"translate":"dbc.handler.player.leave_game"}
scoreboard objectives add has_died minecraft.custom:minecraft.deaths {"translate":"dbc.handler.player.has_died"}
scoreboard objectives add played_tick minecraft.custom:minecraft.play_one_minute {"translate":"dbc.handler.player.play_msg_t"}
scoreboard objectives add is_wounded minecraft.custom:minecraft.damage_taken {"translate":"dbc.handler.player.is_wounded"}
#scoreboard objectives add _h.fill_bucket minecraft.used:minecraft.bucket {"translate":"dbc.handler.player.fill_bucket"}