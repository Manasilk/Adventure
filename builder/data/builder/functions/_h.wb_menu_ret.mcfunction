execute at @s run kill @e[type=minecraft:item,nbt={Item:{tag:{builder_tool:1b}}},sort=nearest,limit=1,distance=0..1.999]
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{builder_tool:1b,CustomModelData:1,display:{Name:'{"italic":false,"translate":"item.assist_tool"}'}}
scoreboard players set @s _h.wb_menu_ret 0

scoreboard players set @s[scores={wb_class_id=1..2,wb_class_type=0}] wb_class_id 0
scoreboard players set @s[scores={wb_class_id=1,wb_class_type=1,wb_option_id=0}] wb_class_type 0
scoreboard players set @s[scores={wb_class_id=1,wb_class_type=1,wb_option_id=1..}] wb_option_id 0
scoreboard players set @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=0}] wb_class_type 0
scoreboard players set @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=0}] wb_class_type 0
scoreboard players set @s[scores={wb_class_id=1..2,wb_class_type=3}] wb_class_type 0

scoreboard players set @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1..,wb_npc_id=0}] wb_npc_type 0
scoreboard players set @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1..,wb_npc_id=1..}] wb_npc_id 0

scoreboard players set @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=1..,wb_gob_id=0}] wb_gob_type 0
scoreboard players set @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=1..,wb_gob_id=1..}] wb_gob_id 0
scoreboard players set @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=1..,wb_gob_id=-1}] wb_gob_id 0

scoreboard players set @s[scores={wb_class_id=3}] wb_class_id 0

tag @s[scores={wb_class_id=1..2,wb_class_type=0}] add WB_MENU_LISTENER
tag @s[scores={wb_class_id=1,wb_class_type=1,wb_option_id=0}] add WB_OPT_LISTENER
tag @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=0,wb_npc_id=0}] add WB_OPT_LISTENER
tag @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=0,wb_gob_id=0}] add WB_OPT_LISTENER
tag @s[scores={wb_class_type=1..2}] add WB_SUBOPT_LISTENER
tag @s[scores={wb_class_id=0}] remove WB_MENU_LISTENER
execute if entity @s[scores={wb_class_id=0}] run function builder:menu/show_class_list

tag @s[tag=_h.wb_update_npc] remove _h.wb_update_npc
tag @s[tag=_h.wb_spawn_npc] remove _h.wb_spawn_npc
tag @s[tag=_h.wb_spawn_gob] remove _h.wb_spawn_gob
tag @s[tag=_h.wb_despawn_npc] remove _h.wb_despawn_npc
tag @s[tag=_h.wb_despawn_gob] remove _h.wb_despawn_gob
tag @s[tag=_h.wb_show_info] remove _h.wb_show_info
tag @s[tag=_e.find_los_target] remove _e.find_los_target