execute store result score #dbc.server _net.online if entity @a
execute unless score #dbc.server _net.db_list = #dbc.server _net.online run function server:game/world/math/entity_level
scoreboard players operation #dbc.server _net.db_list = #dbc.server _net.online