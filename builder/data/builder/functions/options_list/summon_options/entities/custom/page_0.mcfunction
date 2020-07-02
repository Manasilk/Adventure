tellraw @s {"translate":"builder_menu.entity.summon_option","color":"yellow"}
tellraw @s [{"text":"[","color":"gold"},{"translate":"entity.BountiesManager","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_entity.id 1000"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"entity.ArmorVendor","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_entity.id 1001"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"entity.WeaponVendor","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_entity.id 1002"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"entity.AmmoVendor","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_entity.id 1003"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"entity.FoodVendor","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_entity.id 1004"},"color":"white"},{"text":"]","color":"gold"}]
function builder:menu/show_page_scroll_list