tellraw @s [{"text":"["},{"selector":"@e[type=#server:area_trigger,tag=entity_name_parameter]"},{"text":"]: "},{"selector":"@e[type=#server:area_trigger,tag=entity_message_parameter]"}]
tag @s remove _e.get_tellraw_msg
scoreboard players set @s _h.interact 0