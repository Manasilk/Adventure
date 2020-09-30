execute store result storage account.character:inventory inventory[-1].Slot byte 1 run scoreboard players remove #player.inventory_slot TEMP 9

data modify storage account.character:inventory inventory append from storage account.character:inventory inventory[-1]
data remove storage account.character:inventory inventory[-1]

execute store result score #player.inventory_slot TEMP run data get storage account.character:inventory inventory[-1].Slot
scoreboard players remove #player.inventory_slot_count TEMP 1
function internal:world/entity/player/inventory/save/inventory/check_inventory