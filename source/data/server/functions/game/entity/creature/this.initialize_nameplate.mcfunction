data modify entity @s CustomName set value ""
#Place a sign container to store the values
setblock 0 1 0 minecraft:oak_sign{Text1:'[{"translate":"ui.entity_nameplate"},{"text":"||||||||||","bold":true,"color":"green"}]',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
#Merge sign text contents with this entity CustomName
data modify entity @s CustomName set from block 0 1 0 Text1
setblock 0 1 0 minecraft:air