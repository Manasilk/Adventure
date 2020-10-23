execute store result score #temp TEMP run data get storage internal:world build.rv 1
function internal:common/updates/run

execute if score #temp success matches 1 run function internal:scheduler/load/write_old_data
execute if score #temp success matches 1 run function internal:scheduler/load/load_from_buffer
execute if score #temp success matches 1 run function internal:scheduler/load/empty_buffer

scoreboard players set #temp TEMP 0
scoreboard players reset #temp success