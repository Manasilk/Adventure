execute at @s run kill @e[type=minecraft:item,nbt={Item:{tag:{builder_tool:1b}}},sort=nearest,limit=1,distance=0..1.999]
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{builder_tool:1b,CustomModelData:1,display:{Name:'{"italic":false,"translate":"item.assist_tool"}'}}
scoreboard players set @s _h.wb_menu_ret 0

execute if score @s wb_class_id matches 1.. run function builder:_h.wb_menu_ret