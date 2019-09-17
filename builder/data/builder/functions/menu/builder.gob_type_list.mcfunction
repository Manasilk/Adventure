scoreboard players set @s[scores={wb_gob_type=1..}] wb_gob_type 0
scoreboard players set @s[scores={wb_page_cur=1..}] wb_page_cur 0
scoreboard players enable @s wb_gob_type
scoreboard players enable @s wb_gob_id
tellraw @s {"translate":"builder_menu.gob_type","color":"yellow"}
tellraw @s [{"text":"[","color":"gold"},{"translate":"builder_gob_type.lighting","clickEvent":{"action":"run_command","value":"/trigger wb_gob_type set 1"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.gob_type.lighting"}]},"color":"white"},{"text":"]","color":"gold"},{"text":" [","color":"gold"},{"translate":"builder_gob_type.vegetation","clickEvent":{"action":"run_command","value":"/trigger wb_gob_type set 2"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.gob_type.vegetation"}]},"color":"white"},{"text":"]","color":"gold"},{"text":" [","color":"gold"},{"translate":"builder_gob_type.structures","clickEvent":{"action":"run_command","value":"/trigger wb_gob_type set 3"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.gob_type.structure"}]},"color":"white"},{"text":"]","color":"gold"}]
tag @s remove WB_OPT_LISTENER
tag @s add WB_SUBOPT_LISTENER