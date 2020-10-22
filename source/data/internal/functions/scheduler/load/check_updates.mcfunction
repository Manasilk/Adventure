execute store result score #temp TEMP run data get storage internal:world build.rv 1
execute store success score #temp success unless score #temp TEMP matches 2954.. run function internal:common/updates/22_10_2020_2954

execute if score #temp success matches 1 run function internal:scheduler/load/write_old_data
execute if score #temp success matches 1 run function internal:scheduler/load/load_from_buffer
execute if score #temp success matches 1 run function internal:scheduler/load/empty_buffer

scoreboard players set #temp TEMP 0
scoreboard players reset #temp success