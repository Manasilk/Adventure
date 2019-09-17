data modify entity @s[scores={Equip.Main=-1}] HandItems[0] set value {id:"minecraft:air",ItemID:"0"}
data modify entity @s[scores={Equip.Off=-1}] HandItems[1] set value {id:"minecraft:air",ItemID:"0"}

data modify entity @s[scores={Equip.Feet=-1}] ArmorItems[0] set value {id:"minecraft:air",ItemID:"0"}
data modify entity @s[scores={Equip.Legs=-1}] ArmorItems[1] set value {id:"minecraft:air",ItemID:"0"}
data modify entity @s[scores={Equip.Chest=-1}] ArmorItems[2] set value {id:"minecraft:air",ItemID:"0"}
data modify entity @s[scores={Equip.Head=-1}] ArmorItems[3] set value {id:"minecraft:air",ItemID:"0"}
#MAINHAND
data modify entity @s[scores={Equip.Main=1}] HandItems[0] set value {id:"minecraft:wooden_sword",Count:1b,ItemID:"1"}
data modify entity @s[scores={Equip.Main=2}] HandItems[0] set value {id:"minecraft:stone_sword",Count:1b,ItemID:"2"}
data modify entity @s[scores={Equip.Main=3}] HandItems[0] set value {id:"minecraft:iron_sword",Count:1b,ItemID:"3"}
data modify entity @s[scores={Equip.Main=4}] HandItems[0] set value {id:"minecraft:golden_sword",Count:1b,ItemID:"4"}
data modify entity @s[scores={Equip.Main=5}] HandItems[0] set value {id:"minecraft:diamond_sword",Count:1b,ItemID:"5"}
data modify entity @s[scores={Equip.Main=6}] HandItems[0] set value {id:"minecraft:wooden_axe",Count:1b,ItemID:"6"}
data modify entity @s[scores={Equip.Main=7}] HandItems[0] set value {id:"minecraft:stone_axe",Count:1b,ItemID:"7"}
data modify entity @s[scores={Equip.Main=8}] HandItems[0] set value {id:"minecraft:iron_axe",Count:1b,ItemID:"8"}
data modify entity @s[scores={Equip.Main=9}] HandItems[0] set value {id:"minecraft:golden_axe",Count:1b,ItemID:"9"}
data modify entity @s[scores={Equip.Main=10}] HandItems[0] set value {id:"minecraft:diamond_axe",Count:1b,ItemID:"10"}
data modify entity @s[scores={Equip.Main=11}] HandItems[0] set value {id:"minecraft:bow",Count:1b,ItemID:"11"}
data modify entity @s[scores={Equip.Main=13}] HandItems[0] set value {id:"minecraft:trident",Count:1b,ItemID:"13"}
data modify entity @s[scores={Equip.Main=14}] HandItems[0] set value {id:"minecraft:crossbow",Count:1b,ItemID:"14"}
#OFFHAND
data modify entity @s[scores={Equip.Off=1}] HandItems[1] set value {id:"minecraft:wooden_sword",Count:1b,ItemID:"1"}
data modify entity @s[scores={Equip.Off=2}] HandItems[1] set value {id:"minecraft:stone_sword",Count:1b,ItemID:"2"}
data modify entity @s[scores={Equip.Off=3}] HandItems[1] set value {id:"minecraft:iron_sword",Count:1b,ItemID:"3"}
data modify entity @s[scores={Equip.Off=4}] HandItems[1] set value {id:"minecraft:golden_sword",Count:1b,ItemID:"4"}
data modify entity @s[scores={Equip.Off=5}] HandItems[1] set value {id:"minecraft:diamond_sword",Count:1b,ItemID:"5"}
data modify entity @s[scores={Equip.Off=6}] HandItems[1] set value {id:"minecraft:wooden_axe",Count:1b,ItemID:"6"}
data modify entity @s[scores={Equip.Off=7}] HandItems[1] set value {id:"minecraft:stone_axe",Count:1b,ItemID:"7"}
data modify entity @s[scores={Equip.Off=8}] HandItems[1] set value {id:"minecraft:iron_axe",Count:1b,ItemID:"8"}
data modify entity @s[scores={Equip.Off=9}] HandItems[1] set value {id:"minecraft:golden_axe",Count:1b,ItemID:"9"}
data modify entity @s[scores={Equip.Off=10}] HandItems[1] set value {id:"minecraft:diamond_axe",Count:1b,ItemID:"10"}
execute unless score @s Equip.Main matches 11..13 run data modify entity @s[scores={Equip.Off=12}] HandItems[1] set value {id:"minecraft:shield",Count:1b,ItemID:"12"}
#ARMOR
data modify entity @s[scores={Equip.Feet=15}] ArmorItems[0] set value {id:"minecraft:leather_boots",Count:1b,ItemID:"15"}
data modify entity @s[scores={Equip.Legs=16}] ArmorItems[1] set value {id:"minecraft:leather_leggings",Count:1b,ItemID:"16"}
data modify entity @s[scores={Equip.Chest=17}] ArmorItems[2] set value {id:"minecraft:leather_chestplate",Count:1b,ItemID:"17"}
data modify entity @s[scores={Equip.Head=18}] ArmorItems[3] set value {id:"minecraft:leather_helmet",Count:1b,ItemID:"18"}
data modify entity @s[scores={Equip.Feet=19}] ArmorItems[0] set value {id:"minecraft:chainmail_boots",Count:1b,ItemID:"19"}
data modify entity @s[scores={Equip.Legs=20}] ArmorItems[1] set value {id:"minecraft:chainmail_leggings",Count:1b,ItemID:"20"}
data modify entity @s[scores={Equip.Chest=21}] ArmorItems[2] set value {id:"minecraft:chainmail_chestplate",Count:1b,ItemID:"21"}
data modify entity @s[scores={Equip.Head=22}] ArmorItems[3] set value {id:"minecraft:chainmail_helmet",Count:1b,ItemID:"22"}
data modify entity @s[scores={Equip.Feet=23}] ArmorItems[0] set value {id:"minecraft:iron_boots",Count:1b,ItemID:"23"}
data modify entity @s[scores={Equip.Legs=24}] ArmorItems[1] set value {id:"minecraft:iron_leggings",Count:1b,ItemID:"24"}
data modify entity @s[scores={Equip.Chest=25}] ArmorItems[2] set value {id:"minecraft:iron_chestplate",Count:1b,ItemID:"25"}
data modify entity @s[scores={Equip.Head=26}] ArmorItems[3] set value {id:"minecraft:iron_helmet",Count:1b,ItemID:"26"}
data modify entity @s[scores={Equip.Feet=27}] ArmorItems[0] set value {id:"minecraft:golden_boots",Count:1b,ItemID:"27"}
data modify entity @s[scores={Equip.Legs=28}] ArmorItems[1] set value {id:"minecraft:golden_leggings",Count:1b,ItemID:"28"}
data modify entity @s[scores={Equip.Chest=29}] ArmorItems[2] set value {id:"minecraft:golden_chestplate",Count:1b,ItemID:"29"}
data modify entity @s[scores={Equip.Head=30}] ArmorItems[3] set value {id:"minecraft:golden_helmet",Count:1b,ItemID:"30"}
data modify entity @s[scores={Equip.Feet=31}] ArmorItems[0] set value {id:"minecraft:diamond_boots",Count:1b,ItemID:"31"}
data modify entity @s[scores={Equip.Legs=32}] ArmorItems[1] set value {id:"minecraft:diamond_leggings",Count:1b,ItemID:"32"}
data modify entity @s[scores={Equip.Chest=33}] ArmorItems[2] set value {id:"minecraft:diamond_chestplate",Count:1b,ItemID:"33"}
data modify entity @s[scores={Equip.Head=34}] ArmorItems[3] set value {id:"minecraft:diamond_helmet",Count:1b,ItemID:"34"}
data modify entity @s[scores={Equip.Head=35}] ArmorItems[3] set value {id:"minecraft:turtle_helmet",Count:1b,ItemID:"35"}
data modify entity @s[scores={Equip.Chest=36}] ArmorItems[3] set value {id:"minecraft:elytra",Count:1b,ItemID:"36"}

tag @s remove QUERY.CKIT_UPDATE_EQUIPMENT
tag @a[tag=QUERY.CKIT_UPDATE_EQUIPMENT] remove QUERY.CKIT_UPDATE_EQUIPMENT