tellraw @s[tag=!SPELL_AURA_WITHER,tag=_t.h0_m0] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"log.damage_type.falling"}]}],"color":"gray"}
tellraw @s[tag=!SPELL_AURA_WITHER,tag=_t.h0_m1] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"log.damage_type.falling"}]}],"color":"gray"}
tellraw @s[tag=!SPELL_AURA_WITHER,tag=_t.h1_m0] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"log.damage_type.falling"}]}],"color":"gray"}
tellraw @s[tag=!SPELL_AURA_WITHER,tag=_t.h1_m1] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.damage_taken_amb","with":[{"score":{"name":"@s","objective":"dmg_in0"},"color":"white"},{"translate":"log.damage_type.falling"}]}],"color":"gray"}
execute if entity @s[tag=SPELL_AURA_WITHER] run function server:game/combat/combat_log/log_events/damage_magic
tag @s remove _e.log.damage_type.falling