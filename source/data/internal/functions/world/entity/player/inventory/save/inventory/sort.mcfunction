execute store result score #player.inventory_slot TEMP run data get storage account.character:inventory inventory[-1].Slot
execute store result score #player.inventory_slot_count TEMP run data get storage account.character:inventory inventory

function internal:world/entity/player/inventory/save/inventory/check_offhand
function internal:world/entity/player/inventory/save/inventory/check_armor
function internal:world/entity/player/inventory/save/inventory/check_inventory
function internal:world/entity/player/inventory/save/inventory/check_hotbar