#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute if score #dbc.server tick_upd_t matches 0 as @e[type=#server:area_trigger] at @s run function server:scripts/world/area_trigger_script_loader
execute if score #dbc.server tick_upd_t matches 0.. as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=_e.set_track_fast] at @s run function server:scripts/world/area_trigger_script_loader
execute if score #dbc.server tick_upd_t matches 0.. as @e[type=#server:area_trigger,tag=ENTITY_FLAG_SPELL_TRIGGER] at @s run function server:scripts/spells/spell_script_loader
execute if score #dbc.server tick_upd_t matches 0.. as @e[type=minecraft:armor_stand,tag=ENTITY_FLAG_SPELL_TRIGGER] at @s run function server:scripts/spells/spell_script_loader
execute if score #dbc.server tick_upd_t matches 0.. as @e[type=#server:creature] at @s run function server:scripts/world/entity_script_loader
execute if score #dbc.server tick_upd_t matches 0 as @e[type=minecraft:player] at @s run function server:scripts/world/player_script_loader