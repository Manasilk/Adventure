tag @s add SPELL_EFFECT_TELEPORT
#function <F>

#summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"AreaTriggerWorldTeleportMarker"}',Age:0,Duration:0,WaitTime:0,CustomNameVisible:0b,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","WORLD_TELEPORT_MARKER"]}
#execute as @e[type=#server:area_trigger,tag=AreaTriggerWorldTeleportMarker,distance=0..0.001,sort=nearest,limit=1] run function <F>
#teleport @s @e[type=#server:area_trigger,tag=AreaTriggerWorldTeleportMarker,limit=1]

scoreboard players reset @s tplist
scoreboard players set @s tp_mapid 0
scoreboard players set @s tp_zoneid 0
scoreboard players set @s tp_areaid 0