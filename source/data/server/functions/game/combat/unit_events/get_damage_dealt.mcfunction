execute if entity @s[advancements={server:internal/combat_log/damage_dealt={DAMAGED_BAT=true}}] positioned 0 0 0 run data merge entity @e[type=#server:area_trigger,tag=entity_type_param,distance=0..0.001,limit=1] {CustomName:'{"translate":"entity.bat"}'}
advancement revoke @s only server:internal/combat_log/damage_dealt DAMAGED_BAT

scoreboard players operation @s dmg_out0 += @s dmg_out1
scoreboard players operation @s dmg_out0 += @s dmg_out2
scoreboard players operation @s dmg_out0 /= #const 10

execute if score #dbc.server hours matches 0..9 if score #dbc.server minutes matches 0..9 run tellraw @s {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_dealt","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"},{"score":{"name":"@s","objective":"dmg_out0"},"color":"white"}]}],"color":"gray"}
execute if score #dbc.server hours matches 0..9 if score #dbc.server minutes matches 10.. run tellraw @s {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_dealt","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"},{"score":{"name":"@s","objective":"dmg_out0"},"color":"white"}]}],"color":"gray"}
execute if score #dbc.server hours matches 10.. if score #dbc.server minutes matches 0..9 run tellraw @s {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_dealt","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"},{"score":{"name":"@s","objective":"dmg_out0"},"color":"white"}]}],"color":"gray"}
execute if score #dbc.server hours matches 10.. if score #dbc.server minutes matches 10.. run tellraw @s {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_dealt","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"},{"score":{"name":"@s","objective":"dmg_out0"},"color":"white"}]}],"color":"gray"}

scoreboard players reset @s dmg_out0
scoreboard players reset @s dmg_out1
scoreboard players reset @s dmg_out2