execute store result score #iterator TEMP run data get storage internal:buffer iterator.shift_left
execute if score #iterator TEMP matches 1.. run function internal:common/logging/world/data/quests/loop
execute if score #iterator TEMP matches 0 run function internal:common/logging/world/data/quests/write_and_clear