data modify storage account.character:inventory offhand set value []

data modify storage account.character:inventory offhand append from entity @s Inventory[{Slot:-106b}]
data modify storage account.character:inventory offhand[0].Slot set value 0b
data modify block 0 0 0 Items set from storage account.character:inventory offhand