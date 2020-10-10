#This is where WIP scripts' loading functions should be declared
#function developer:workbench/scripts/<type>
execute as @e[type=#internal:creature,tag=developer.workbench.scripts,tag=!ENTITY_FLAG_OBJECT_ACTOR] at @s run function developer:workbench/scripts/creature_scripts
execute as @e[type=#internal:area_trigger,tag=developer.workbench.scripts,tag=!ENTITY_FLAG_OBJECT_ACTOR] at @s run function developer:workbench/scripts/area_trigger_scripts
execute as @e[type=#internal:area_trigger,tag=developer.workbench.scripts,tag=ENTITY_FLAG_OBJECT_ACTOR] at @s run function developer:workbench/scripts/object_scripts
execute as @e[type=minecraft:villager,tag=developer.workbench.scripts,tag=ENTITY_FLAG_OBJECT_ACTOR] at @s run function developer:workbench/scripts/object_scripts