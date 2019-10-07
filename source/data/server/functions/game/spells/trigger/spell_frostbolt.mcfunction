tag @s remove _e.call_spell_script
tag @s remove spell_script_frostbolt

summon minecraft:area_effect_cloud ~ ~1.55 ~ {Age:0,Duration:200,WaitTime:0,CustomNameVisible:0b,Tags:["ENTITY_FLAG_WORLD_IGNORE","ENTITY_FLAG_SPELL_TRIGGER","spell_frostbolt"]}