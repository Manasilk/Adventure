execute if score #dbc.server world_version matches 0 run function server:worldserver/update_dataversion

tellraw @s {"translate":"server.login_msg","with":[{"score":{"name":"#dbc.core","objective":"build_version"}},{"score":{"name":"#dbc.core","objective":"build_update"}},{"score":{"name":"#dbc.core","objective":"build_hotfix"}},{"selector":"@e[type=#server:area_trigger,tag=BUILD_CODENAME]"}],"color":"yellow"}
tellraw @s {"translate":"server.readme_msg","with":[{"text":"https://www.google.com/","clickEvent":{"action":"open_url","value":"https://www.google.com/"},"color":"white","underlined":true}],"color":"yellow"}
tellraw @s[tag=rbac.debugging] {"translate":"server.build_info","with":[{"score":{"name":"#dbc.core","objective":"build_revision"}},{"score":{"name":"#dbc.core","objective":"build_pd_d"}},{"score":{"name":"#dbc.core","objective":"build_pd_m"}},{"score":{"name":"#dbc.core","objective":"build_pd_y"}},{"score":{"name":"#dbc.server","objective":"world_version"},"color":"green"}],"color":"yellow"}

scoreboard players enable @s gender_sfx
execute unless score @s gender_sfx matches 1..2 run tellraw @s {"translate":"sfx.player_voice","with":[{"text":"[","color":"gold"},{"translate":"sfx.player.voice_option.male","color":"white","clickEvent":{"action":"run_command","value":"/trigger gender_sfx set 1"}},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"sfx.player.voice_option.female","color":"white","clickEvent":{"action":"run_command","value":"/trigger gender_sfx set 2"}},{"text":"]","color":"gold"}],"color":"yellow"}

scoreboard players set @s _h.leave_game 0
scoreboard players set @s _h.play_msg_t 0
tag @s remove H_PLAYER_JOIN_GAME