scoreboard players operation @s TEMP = @s dmg_in0
scoreboard players operation @s TEMP -= @s entity_curhp
scoreboard players operation @s dmg_in0 -= @s TEMP

tellraw @s[tag=_t.h0_m0] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#world","objective":"hours"}},{"text":"0"},{"score":{"name":"#world","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_fatal","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}
tellraw @s[tag=_t.h0_m1] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#world","objective":"hours"}},{"text":""},{"score":{"name":"#world","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_fatal","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}
tellraw @s[tag=_t.h1_m0] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#world","objective":"hours"}},{"text":"0"},{"score":{"name":"#world","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_fatal","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}
tellraw @s[tag=_t.h1_m1] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#world","objective":"hours"}},{"text":""},{"score":{"name":"#world","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"event_type.log.damage_fatal","with":[{"score":{"name":"@s[scores={TEMP=1..}]","objective":"TEMP"},"color":"white"}]}]}],"color":"gray"}

tag @s[tag=combat_log.damage_type_void] remove combat_log.damage_type_void
tag @s[tag=combat_log.damage_type_falling] remove combat_log.damage_type_falling
tag @s[tag=combat_log.damage_type_fire] remove combat_log.damage_type_fire
tag @s[tag=combat_log.damage_type_void] remove combat_log.damage_type_void
tag @s[tag=combat_log.damage_type_magic] remove combat_log.damage_type_magic
tag @s[tag=combat_log.damage_type_lightning] remove combat_log.damage_type_lightning