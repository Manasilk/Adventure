scoreboard players reset @s reset_xp
scoreboard players enable @s reset_xp
tellraw @s {"translate":"event_type.reset_account_level","color":"yellow"}

experience set @s 0 points
experience set @s 0 levels
scoreboard players set @s entity_level 0
scoreboard players set @s entity_nxtlvl 0
scoreboard players set @s entity_reclvl 0
scoreboard players operation @s exp_gained = @s exp_stored