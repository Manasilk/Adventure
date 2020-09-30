data modify storage account.character:inventory base_inventory set value []
data modify storage account.character:inventory hotbar set value []
data modify storage account.character:inventory armor set value []
data modify storage account.character:inventory offhand set value []

data modify storage account.character:inventory inventory set from entity @s Inventory

function internal:world/entity/player/inventory/save/inventory/sort