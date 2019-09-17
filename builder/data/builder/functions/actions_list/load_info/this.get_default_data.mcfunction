tag @s[tag=!H_WB_SUMMON_NPC,scores={wb_class_type=2}] add H_WB_SUMMON_NPC
tag @s[tag=!H_WB_DESPAWN_NPC,scores={wb_class_type=3}] add H_WB_DESPAWN_NPC
tag @s[scores={wb_class_id=3}] add VMAPS_CUSTOM_COMMAND_INVOKER
tag @s[scores={wb_class_id=3}] add H_WB_NPC_SHOW_INFO

tag @e[type=#server:area_trigger,tag=vmap_los_chk,sort=nearest,limit=1,distance=0..1.001] add H_WB_UPDATE_NPC
scoreboard players operation @e[type=#server:area_trigger,tag=H_WB_UPDATE_NPC,sort=nearest,limit=1,distance=0..1.001] wb_option_id = @s[scores={wb_option_id=-1..}] wb_option_id
execute if entity @s[tag=H_WB_DESPAWN_NPC] run scoreboard players set @e[type=#server:area_trigger,tag=H_WB_UPDATE_NPC,sort=nearest,limit=1,distance=0..1.001] wb_option_id -1

execute if entity @s[tag=H_WB_NPC_SHOW_INFO] run tag @e[type=#server:area_trigger,tag=vmap_los_chk,sort=nearest,limit=1,distance=0..1.001] add H_WB_NPC_SHOW_INFO