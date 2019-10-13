tag @s remove _e.call_spell_script
tag @s remove spell_script_spider_web

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:cobweb",Count:1b}],Tags:["ENTITY_FLAG_SERVER_CONTROLLED","ENTITY_FLAG_SPELL_TRIGGER","MOVEMENTGENERATOR_MOTION","MOVEMENTGENERATOR_DOUBLE_RATE","spell_spider_web"],Rotation:[0.0f,0.0f]}