scoreboard players add @s entity_tick 1
execute if score @s entity_tick > #const UPD_CYCLE run scoreboard players set @s entity_tick 0