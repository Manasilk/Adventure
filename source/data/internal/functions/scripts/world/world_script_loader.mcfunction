#This is where scripts' loading functions should be declared
#function internal:scripts/world/<type>
execute if score #world world_tick matches 0 as @e[type=#internal:area_trigger,tag=!ENTITY_FLAG_QUEST_TRIGGER] at @s run function internal:scripts/world/area_trigger_script_loader
execute if score #world world_tick matches 0.. as @e[type=#internal:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER] at @s run function internal:scripts/world/area_trigger_script_loader
execute if score #world world_tick matches 0.. as @e[type=#internal:area_trigger,tag=ENTITY_FLAG_SPELL_TRIGGER] at @s run function internal:scripts/spells/spell_script_loader
execute if score #world world_tick matches 0.. as @e[type=minecraft:armor_stand,tag=ENTITY_FLAG_SPELL_TRIGGER] at @s run function internal:scripts/spells/spell_script_loader
execute if score #world world_tick matches 0.. as @e[type=#internal:creature] at @s run function internal:scripts/world/entity_script_loader
execute if score #world world_tick matches 0.. as @e[type=minecraft:player] at @s run function internal:scripts/world/player_script_loader