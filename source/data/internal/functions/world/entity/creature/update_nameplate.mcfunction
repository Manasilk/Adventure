function internal:world/combat/unit_events/get_range_damage_dealt
scoreboard players operation @s entity_temphp = @s entity_curhp
scoreboard players operation @s entity_hpprc = @s entity_curhp
scoreboard players operation @s entity_hpprc *= #const 100
scoreboard players operation @s entity_hpprc /= @s entity_maxhp

data modify entity @s CustomName set value ""
#Place a sign container to store the values
execute if score @s entity_hpprc matches 0 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"","bold":true,"color":"green"},{"text":"||||||||||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 1..10 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 11..20 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 21..30 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 31..40 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 41..50 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 51..60 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 61..70 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 71..80 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 81..90 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute if score @s entity_hpprc matches 91..100 run setblock 0 2 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"||||||||||","bold":true,"color":"green"},{"text":"","bold":true,"color":"dark_gray"}]}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
#Merge sign text contents with this entity CustomName
data modify entity @s CustomName set from block 0 2 0 Text1
setblock 0 2 0 minecraft:air