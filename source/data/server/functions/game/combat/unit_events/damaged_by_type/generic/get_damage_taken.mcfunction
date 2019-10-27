advancement revoke @s only server:internal/combat_log/damage_taken DAMAGED_GENERIC
scoreboard players set @s TEMP 0
scoreboard players operation @s dmg_in0 += @s dmg_in1
scoreboard players operation @s dmg_in0 += @s dmg_in2
scoreboard players operation @s dmg_in0 /= #const 10
#execute if score @s dmg_in0 > @s entity_curhp run function server:game/combat/unit_events/get_damage_fatal

execute if score #dbc.server hours matches 0..9 if score #dbc.server minutes matches 0..9 run tellraw @s[scores={dmg_in0=1..}] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_mitigated","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}
execute if score #dbc.server hours matches 0..9 if score #dbc.server minutes matches 10.. run tellraw @s[scores={dmg_in0=1..}] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_mitigated","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}
execute if score #dbc.server hours matches 10.. if score #dbc.server minutes matches 0..9 run tellraw @s[scores={dmg_in0=1..}] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_mitigated","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}
execute if score #dbc.server hours matches 10.. if score #dbc.server minutes matches 10.. run tellraw @s[scores={dmg_in0=1..}] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_mitigated","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}

scoreboard players reset @s dmg_in0
scoreboard players reset @s dmg_in1
scoreboard players reset @s dmg_in2
scoreboard players reset @s[scores={TEMP=1..}] TEMP