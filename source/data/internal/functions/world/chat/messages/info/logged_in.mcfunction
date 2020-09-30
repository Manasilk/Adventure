execute if score #world world_version matches 0 run function internal:configuration/dataver

tellraw @s {"translate":"server.login_msg","with":[{"score":{"name":"#world","objective":"build_version"}},{"score":{"name":"#world","objective":"build_update"}},{"score":{"name":"#world","objective":"build_hotfix"}},{"selector":"@e[type=#internal:area_trigger,tag=BUILD_CODENAME]"}],"color":"yellow"}
tellraw @s {"translate":"server.readme_msg","with":[{"text":"https://github.com/srQianna/StoneCore","clickEvent":{"action":"open_url","value":"https://github.com/srQianna/StoneCore"},"color":"white","underlined":true}],"color":"yellow"}
tellraw @s[tag=rbac.debugging] {"translate":"server.build_info","with":[{"score":{"name":"#world","objective":"build_revision"}},{"score":{"name":"#world","objective":"build_pd_d"}},{"score":{"name":"#world","objective":"build_pd_m"}},{"score":{"name":"#world","objective":"build_pd_y"}},{"score":{"name":"#world","objective":"world_version"},"color":"green"}],"color":"yellow"}

execute unless score @s gender_sfx matches 1..2 run tellraw @s {"translate":"sfx.player_voice","with":[{"text":"[","color":"gold"},{"translate":"sfx.player.voice_option.male","color":"white","clickEvent":{"action":"run_command","value":"/trigger gender_sfx set 1"}},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"sfx.player.voice_option.female","color":"white","clickEvent":{"action":"run_command","value":"/trigger gender_sfx set 2"}},{"text":"]","color":"gold"}],"color":"yellow"}

scoreboard players set @s is_offline 0
scoreboard players set @s played_tick 0
tag @s remove messages.info.logged_in