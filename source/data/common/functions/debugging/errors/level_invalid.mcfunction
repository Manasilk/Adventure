tellraw @s {"translate":"event_type.error_level_invalid","color":"red"}
tag @s remove _e.error_level_invalid

scoreboard players operation @s entity_reclvl = @s entity_maxlvl
scoreboard players operation @s entity_nxtlvl = @s entity_maxlvl