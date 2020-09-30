tellraw @s [{"text":"["},{"selector":"@e[type=#internal:area_trigger,tag=entity_name_parameter]"},{"text":"]: "},{"selector":"@e[type=#internal:area_trigger,tag=entity_message_parameter]"}]
tag @s remove messages.special.generic_tellraw
scoreboard players set @s chat.triggered 0