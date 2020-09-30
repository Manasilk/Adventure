scoreboard players reset @s unstuck
scoreboard players set @s unstuck_cd 600
tag @s add SPELL_EFFECT_TELEPORT
function internal:world/entity/player/set_temp_spawn_position

summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"AreaTriggerUnstuckMarker"}',Age:0,Duration:0,WaitTime:0,CustomNameVisible:0b,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","UNSTUCK_SPAWN_MARKER"]}
execute as @e[type=#server:area_trigger,tag=AreaTriggerUnstuckMarker,distance=0..0.001,sort=nearest,limit=1] run function internal:world/entity/player/get_player_spawn
teleport @s @e[type=#server:area_trigger,tag=AreaTriggerUnstuckMarker,limit=1]