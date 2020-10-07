scoreboard players reset @s reset_xp
scoreboard players enable @s reset_xp
tellraw @s {"translate":"event_type.reset_account_level","color":"yellow"}
advancement revoke @s from internal:world/account/character/level_10
advancement revoke @s[level=40..] only internal:world/account/character/root LEVEL40
advancement revoke @s[level=50..] only internal:world/account/character/root LEVEL50
advancement revoke @s[level=60..] only internal:world/account/character/root LEVEL60
scoreboard players remove @s[level=40..] stat_adv_pts 10
scoreboard players remove @s[level=50..] stat_adv_pts 10
scoreboard players remove @s[level=60..] stat_adv_pts 10
advancement revoke @s[scores={stat_adv_pts=0..3999}] only internal:world/account/feat_of_strength/4000

experience set @s 0 points
experience set @s 0 levels
scoreboard players set @s entity_level 0
scoreboard players set @s entity_nxtlvl 0
scoreboard players set @s entity_reclvl 0
scoreboard players operation @s exp_gained = @s exp_stored