#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute if entity @s[tag=spell_fireball] run function server:scripts/spells/spell_fireball
execute if entity @s[tag=spell_frostbolt] run function server:scripts/spells/spell_frostbolt
execute if entity @s[tag=spell_frostfire_bolt] run function server:scripts/spells/spell_frostfire_bolt
execute if entity @s[tag=spell_spider_web] run function server:scripts/spells/spell_spider_web