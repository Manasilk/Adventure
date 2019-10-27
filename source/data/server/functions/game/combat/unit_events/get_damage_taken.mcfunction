execute unless entity @s[advancements={server:internal/combat_log/damage_taken={DAMAGED_GENERIC=true}}] run function server:game/combat/unit_events/damaged_by_type/entity/get_damage_taken
execute if entity @s[advancements={server:internal/combat_log/damage_taken={DAMAGED_GENERIC=true}}] run function server:game/combat/unit_events/damaged_by_type/generic/get_damage_taken

execute store result score @s entity_curhp run data get entity @s Health 1
scoreboard players operation @s entity_temphp = @s entity_curhp