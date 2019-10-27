execute if entity @s[advancements={server:internal/combat_log/damage_dealt={DAMAGED_BAT=true}}] positioned 0 0 0 run data merge entity @e[type=#server:area_trigger,tag=entity_type_param,distance=0..0.001,limit=1] {CustomName:'{"translate":"entity.bat"}'}






advancement revoke @s only server:internal/combat_log/damage_dealt DAMAGED_BAT