scoreboard players reset @s unstuck
tag @s add SPELL_EFFECT_TELEPORT
scoreboard players set @s unstuck_cd 600

summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"UNSTUCK_SPAWN_MARKER"}',Age:0,Duration:0,WaitTime:0,CustomNameVisible:0b,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","UNSTUCK_SPAWN_MARKER"]}
execute as @e[type=#server:area_trigger,tag=UNSTUCK_SPAWN_MARKER,distance=0..0.001,sort=nearest,limit=1] run function server:game/entity/area_trigger/get_player_spawn

teleport @s @e[type=#server:area_trigger,tag=UNSTUCK_SPAWN_MARKER,limit=1]