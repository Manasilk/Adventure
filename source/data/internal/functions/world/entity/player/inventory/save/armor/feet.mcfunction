data modify storage account.character:inventory armor set value []

data modify storage account.character:inventory armor append from entity @s Inventory[{Slot:100b}]
data modify storage account.character:inventory armor[0].Slot set value 0b
data modify block 0 0 0 Items set from storage account.character:inventory armor