execute as @a run scoreboard players operation #dbc.entity entity_level += @s entity_level
scoreboard players operation #dbc.entity entity_avglvl = #dbc.server _net.online
scoreboard players operation #dbc.entity entity_level /= #dbc.entity entity_avglvl

tag @e[type=#server:creature,type=!#server:npc_friendly] add _h.modify_attributes