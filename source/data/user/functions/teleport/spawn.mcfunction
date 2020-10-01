scoreboard players reset @s unstuck
scoreboard players set @s unstuck_cd 600
tag @s add SPELL_EFFECT_TELEPORT
function internal:world/entity/player/set_temp_spawn_position

summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:0,WaitTime:0,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","UNSTUCK_SPAWN_MARKER"]}
execute as @e[type=#internal:area_trigger,tag=UNSTUCK_SPAWN_MARKER,distance=0..0.001,sort=nearest,limit=1] run function internal:world/entity/set_entity_position
teleport @s @e[type=#internal:area_trigger,tag=UNSTUCK_SPAWN_MARKER,limit=1]