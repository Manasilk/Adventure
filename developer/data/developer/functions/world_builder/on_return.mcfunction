execute at @s[tag=account.builder,scores={chat.return=1..}] run kill @e[type=minecraft:item,nbt={Item:{tag:{world_builder_tool:1b}}},sort=nearest,limit=1,distance=0..1.999]
item replace entity @s[tag=account.builder,scores={chat.return=1..}] hotbar.0 with minecraft:carrot_on_a_stick{world_builder_tool:1b,CustomModelData:1,display:{Name:'{"italic":false,"translate":"item.assist_tool"}'}}

scoreboard players set @s[scores={wb.class_id=1..2,wb.type_id=0}] wb.class_id 0
scoreboard players set @s[scores={wb.class_id=1,wb.type_id=1,wb.option_id=0}] wb.type_id 0
scoreboard players set @s[scores={wb.class_id=1,wb.type_id=1,wb.option_id=1..}] wb.option_id 0
scoreboard players set @s[scores={wb.class_id=1,wb.type_id=2,wb.npc_type=0}] wb.type_id 0
scoreboard players set @s[scores={wb.class_id=2,wb.type_id=2,wb.gob_type=0}] wb.type_id 0
scoreboard players set @s[scores={wb.class_id=1..2,wb.type_id=3}] wb.type_id 0

scoreboard players set @s[scores={wb.class_id=1,wb.type_id=2,wb.npc_type=1..,wb.npc_id=0}] wb.npc_type 0
scoreboard players set @s[scores={wb.class_id=1,wb.type_id=2,wb.npc_type=1..,wb.npc_id=1..}] wb.npc_id 0

scoreboard players set @s[scores={wb.class_id=2,wb.type_id=2,wb.gob_type=1..,wb.gob_id=0}] wb.gob_type 0
scoreboard players set @s[scores={wb.class_id=2,wb.type_id=2,wb.gob_type=1..,wb.gob_id=1..}] wb.gob_id 0
scoreboard players set @s[scores={wb.class_id=2,wb.type_id=2,wb.gob_type=1..,wb.gob_id=-1}] wb.gob_id 0

scoreboard players set @s[scores={wb.class_id=3}] wb.class_id 0