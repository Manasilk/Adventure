execute store result score #DBC.Server _net.online if entity @a
execute unless score #DBC.Server _net.db_list = #DBC.Server _net.online run function server:game/world/math/entity_level
scoreboard players operation #DBC.Server _net.db_list = #DBC.Server _net.online